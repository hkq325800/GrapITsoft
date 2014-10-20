using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Net;

namespace GrapITsoft
{
    class adultedu : Inherite
    {//继续教育学院
        private static string rootHttp = "http://adultedu.hdu.edu.cn/";

        public adultedu(int amount) : base(amount) {
            co_id = "1020";
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
                int index = outputData.IndexOf("首页新闻");
                if (index >= 0)
                    found = true;
                if (found && outputData.IndexOf("a href=") >= 0)
                {
                    string href = outputData.Substring(outputData.IndexOf("a href=") + 8);
                    href = href.Substring(0, href.IndexOf('\''));
                    hrefs[i] = rootHttp + href;
                    outputData = outputData.Substring(outputData.IndexOf("a href=") + 6);
                    title[i] = outputData.Substring(outputData.IndexOf("title=") + 7);
                    title[i] = title[i].Substring(0,title[i].IndexOf("\'>"));
                    outputData.Substring(outputData.IndexOf("title=") + 6);
                    i++;
                    if (i > no - 1) break;
                    if (outputData.IndexOf("a href=") >= 0)
                    {
                        outputData += streamRead.ReadLine();
                        continue;
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
                myHttpWebRequest = (HttpWebRequest)WebRequest.Create(hrefs[j]);
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
                    if (outputData.IndexOf("发布时间") >= 0)
                    {
                        time[j] = outputData.Substring(outputData.IndexOf("发布时间：") + 5);
                        time[j] = time[j].Substring(0,time[j].IndexOf("点击量"));
                        found = true;
                    }
                    if (outputData.IndexOf("关闭窗口") >= 0)
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
