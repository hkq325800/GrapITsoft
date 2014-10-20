using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;

namespace GrapITsoft
{
    class sie : Inherite
    {//国际教育学院
        private string rootHttp = "http://sie.hdu.edu.cn";

        public sie(int n) : base(n) {
            co_id = "1019";
        }

        public override bool ReadData()
        {
            int begin;
            string[] hrefs = new string[no];
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
            myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            Stream streamResponse = myHttpWebResponse.GetResponseStream();
            StreamReader streamRead = new StreamReader(streamResponse);
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0;
            while (!streamRead.EndOfStream)
            {
                outputData.Trim();
                if (outputData.IndexOf("class=\"list\">") >= 0)
                    found = true;
                if (found)
                {
                    while ((begin = outputData.IndexOf("<li>")) >= 0)
                    {
                        outputData = outputData.Remove(begin, 4);
                        time[i] = outputData.Substring(outputData.IndexOf("<span>") + 6, 10);
                        outputData = outputData.Remove(outputData.IndexOf("<span>"), 6);
                        hrefs[i] = outputData.Substring(outputData.IndexOf("a href=\'") + 8);
                        outputData = outputData.Remove(outputData.IndexOf("a href=\'"), 8);
                        hrefs[i] = hrefs[i].Remove(hrefs[i].IndexOf("\'"));
                        hrefs[i] = rootHttp + hrefs[i];
                        title[i] = outputData.Substring(outputData.IndexOf("title=\'") + 7);
                        outputData = outputData.Remove(outputData.IndexOf("title=\'"), 7);
                        title[i] = title[i].Remove(title[i].IndexOf("\'"));
                        i++;
                        if (i > no - 1) break;
                    }
                    if (i > no - 1) break;
                }
                outputData = streamRead.ReadLine();
                if (outputData.IndexOf("</div>") >= 0)
                    found = false;
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
                streamRead = new StreamReader(streamResponse);
                //Char[] readBuff = new Char[256];
                //int count = streamRead.Read(readBuff, 0, 256);
                //Console.WriteLine("\nThe contents of HTML Page are :\n");
                outputData = streamRead.ReadLine();
                StringBuilder sb = new StringBuilder();
                found = false;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("class=\"right_main\">") >= 0)
                        found = true;
                    if (outputData.IndexOf("<!--end right_main-->") >= 0)
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
                        outputData = outputData.Replace("\'", "\'\'");
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
