using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Net;

namespace GrapITsoft
{
    class jwc : Inherite
    {//教务处
        private static string rootHttp = "http://jwc.hdu.edu.cn";

        public jwc(int amount)
            : base(amount)
        {
            co_id = "1022";
        }

        public override bool ReadData()
        {
            string[] hrefs = new string[no];
            // Create a new 'HttpWebRequest' object to the mentioned URL.
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
            myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            // Assign the response object of 'HttpWebRequest' to a 'HttpWebResponse' variable.
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            // Display the contents of the page to the console.
            Stream streamResponse = myHttpWebResponse.GetResponseStream();
            StreamReader streamRead = new StreamReader(streamResponse,Encoding.GetEncoding("gb2312"));
            //Char[] readBuff = new Char[256];
            //int count = streamRead.Read(readBuff, 0, 256);
            //Console.WriteLine("\nThe contents of HTML Page are :\n");
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0;
            while (!streamRead.EndOfStream)
            {
                //String outputData = new String(readBuff, 0, count);
                int index = outputData.IndexOf("class=\"title_main\">");
                if (index >= 0)
                    found = true;
                if (found && outputData.IndexOf("class=\"list_bottom\">") >= 0)
                {
                    index = outputData.IndexOf("href=\"");
                    if (index > 0)
                    {
                        string href = outputData.Substring(index + 6);
                        href = href.Substring(0, href.IndexOf('\"'));
                        hrefs[i] = rootHttp + href;
                        title[i] = outputData.Substring(outputData.IndexOf("title=\"标题：") + 10);
                        outputData = streamRead.ReadLine();
                        outputData = streamRead.ReadLine();
                        time[i] = outputData.Substring(outputData.IndexOf("更新：") + 3);
                        i++;
                    }
                    if (i > no - 1) break;
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
                    if (outputData.IndexOf("id=\"ArticleBody\"") >= 0)
                        found = true;
                    if (outputData.IndexOf("上一篇文章") >= 0)
                        found = false;
                    if (found)
                    {
                        outputData = outputData.Trim();
                        outputData = outputData.Replace("&ldquo;", "");
                        outputData = outputData.Replace("&rdquo;", "");
                        outputData = outputData.Replace("&nbsp;", "");
                        outputData = outputData.Replace("&mdash;", "");
                        outputData = outputData.Replace("\'", "\'\'");
                        while (outputData.IndexOf("this.width>500") >= 0)
                            outputData = outputData.Remove(outputData.IndexOf("width>"), 11);
                        while (outputData.IndexOf("<") >= 0)
                        {
                            outputData = outputData.Remove(outputData.IndexOf("<"), outputData.IndexOf(">") - outputData.IndexOf("<") + 1);
                        }
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
