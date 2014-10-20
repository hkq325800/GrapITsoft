using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;


namespace GrapITsoft
{
    class marx : Inherite
    {//马克思学院
        private string rootHttp = "http://marx.hdu.edu.cn/";

        public marx(int n) : base(n) {
            co_id = "1016";
        }
        
        public override bool ReadData()
        {
            int begin;
            string[] hrefs = new string[no];
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
            myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            Stream streamResponse = myHttpWebResponse.GetResponseStream();
            StreamReader streamRead = new StreamReader(streamResponse,Encoding.GetEncoding("gb2312"));
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0;
            while (!streamRead.EndOfStream)
            {
                outputData.Trim();
                if (outputData.IndexOf("<div id=\"title\">") >= 0)
                    found = true;
                if (found)
                {
                    while ((begin = outputData.IndexOf("<li  class=\"news\">")) >= 0)
                    {
                        outputData = outputData.Remove(begin, 4);
                        time[i] = outputData.Substring(outputData.IndexOf("<span class=\"time\">") + 20, 10);
                        outputData = outputData.Remove(outputData.IndexOf("<span class=\"time\">"), 20);
                        hrefs[i] = outputData.Substring(outputData.IndexOf("a href=\"") + 8);
                        outputData = outputData.Remove(outputData.IndexOf("a href=\""), 8);
                        hrefs[i] = hrefs[i].Remove(hrefs[i].IndexOf("\""));
                        hrefs[i] = rootHttp + hrefs[i];
                        title[i] = outputData.Substring(outputData.IndexOf("title=") + 6);
                        outputData = outputData.Remove(outputData.IndexOf("title="), 6);
                        title[i] = title[i].Remove(title[i].IndexOf("</a>"));
                        i++;
                        if (i > no - 1) break;
                    }
                    if (i > no - 1) break;
                }
                if (outputData.IndexOf("</ul>") >= 0)
                    found = false;
                outputData = streamRead.ReadLine();
            }
            streamRead.Close();
            streamResponse.Close();
            myHttpWebResponse.Close();
            for (int j = 0; j < no; j++)
            {
                myHttpWebRequest = (HttpWebRequest)WebRequest.Create(hrefs[j]);
                myHttpWebRequest.UserAgent = ".NET Framework Test Client";
                // Assign the response object of 'HttpWebRequest' to a 'HttpWebResponse' variable.
                myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
                // Display the contents of the page to the console.
                streamResponse = myHttpWebResponse.GetResponseStream();
                streamRead = new StreamReader(streamResponse,Encoding.GetEncoding("gb2312"));
                //Char[] readBuff = new Char[256];
                //int count = streamRead.Read(readBuff, 0, 256);
                //Console.WriteLine("\nThe contents of HTML Page are :\n");
                outputData = streamRead.ReadLine();
                StringBuilder sb = new StringBuilder();
                found = false;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("id=\'title\'>") >= 0)
                        found = true;
                    if (outputData.IndexOf("id=\"footer\">") >= 0)
                        found = false;
                    if (found)
                    {
                        outputData = outputData.Trim();
                        while (outputData.IndexOf("<") >= 0)
                        {
                            outputData = outputData.Remove(outputData.IndexOf("<"), outputData.IndexOf(">") - outputData.IndexOf("<") + 1);
                        }
                        //outputData = outputData.Replace("<h1>", "");
                        // outputData = outputData.Replace("</h1>", "");
                        //  outputData = outputData.Replace("<br />", "");
                        // outputData = outputData.Replace("<p>", "");
                        //  outputData = outputData.Replace("</p>", "");
                        outputData = outputData.Replace("&ldquo;", "");
                        outputData = outputData.Replace("&rdquo;", "");
                        // outputData = outputData.Replace("<br/>", "");
                        // outputData = outputData.Replace("<b>", "");
                        // outputData = outputData.Replace("</b>", "");
                        // outputData = outputData.Replace("<hr id=\"hr\"/>", "");
                        //   outputData = outputData.Replace("<div id=\"max\">", "");
                        outputData = outputData.Replace("&nbsp;", "");
                        outputData = outputData.Replace("&mdash;", "");
                        sb.Append(outputData + "\n");
                        //Console.WriteLine(outputData);
                    }
                    outputData = streamRead.ReadLine();
                }
                text[j] = sb.ToString();
            }
            return true;
        }
        
    }
}
