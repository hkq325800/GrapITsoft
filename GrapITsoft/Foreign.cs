using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;

namespace GrapITsoft
{
    class Foreign : Inherite
    {//外国语学院
        private static string rootHttp = "http://foreignedu.hdu.edu.cn/"; 
        public Foreign(int amount) : base(amount) {
            co_id = "1013";
        }

        public override bool ReadData()
        {
            string[] result = new string[no];
            // Create a new 'HttpWebRequest' object to the mentioned URL.
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
            myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            // Assign the response object of 'HttpWebRequest' to a 'HttpWebResponse' variable.
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            // Display the contents of the page to the console.
            Stream streamResponse = myHttpWebResponse.GetResponseStream();
            StreamReader streamRead = new StreamReader(streamResponse, Encoding.GetEncoding("gb2312"));
            //Char[] readBuff = new Char[256];
            //int count = streamRead.Read(readBuff, 0, 256);
            //Console.WriteLine("\nThe contents of HTML Page are :\n");
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0;
            while (!streamRead.EndOfStream)
            {
                int index = outputData.IndexOf("class=\"crumb_nav\"");
                if (index >= 0)
                    found = true;
                if (found && outputData.IndexOf("<li>") > 0)
                {
                    time[i] = outputData.Substring(outputData.IndexOf("<em>")+4,10);
                    index = outputData.IndexOf("href=\"");
                    if (index >= 0)
                    {
                        string href = outputData.Substring(index + 6);
                        href = href.Substring(0, href.IndexOf('\"'));
                        result[i] = rootHttp + href;
                        i++;
                        if (i > no - 1) break;
                    }
                }
                //count = streamRead.Read(readBuff, 0, 256);
                outputData = streamRead.ReadLine();
            }
            // Release the response object resources.
            streamRead.Close();
            streamResponse.Close();
            myHttpWebResponse.Close();
            for (int j = 0; j < no; j++)
            {
                myHttpWebRequest = (HttpWebRequest)WebRequest.Create(result[j]);
                myHttpWebRequest.UserAgent = ".NET Framework Test Client";
                // Assign the response object of 'HttpWebRequest' to a 'HttpWebResponse' variable.
                myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
                // Display the contents of the page to the console.
                streamResponse = myHttpWebResponse.GetResponseStream();
                streamRead = new StreamReader(streamResponse, Encoding.GetEncoding("gb2312"));
                //Char[] readBuff = new Char[256];
                //int count = streamRead.Read(readBuff, 0, 256);
                //Console.WriteLine("\nThe contents of HTML Page are :\n");
                outputData = streamRead.ReadLine();
                StringBuilder sb = new StringBuilder();
                found = false;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("<h1>") > 0)           //抓取标题
                    {
                        int begin = outputData.IndexOf("<h1>");
                        int end = outputData.IndexOf("</h1>");
                        title[j] = outputData.Substring(begin + 4, end - begin - 4);

                        found = true;
                    }
                    if (outputData.IndexOf("</div>") >= 0)
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
