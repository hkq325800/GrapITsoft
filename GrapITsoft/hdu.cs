using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;


namespace GrapITsoft
{
    class hdu : Inherite
    {//学校主页
        private static string rootHttp = "http://www.hdu.edu.cn/";
        public hdu(int amount)
            : base(amount)
        {
            co_id = "1000";
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
            StreamReader streamRead = new StreamReader(streamResponse, System.Text.Encoding.GetEncoding("GB2312"));
            //Char[] readBuff = new Char[256];
            //int count = streamRead.Read(readBuff, 0, 256);
            //Console.WriteLine("\nThe contents of HTML Page are :\n");
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0;
            while (!streamRead.EndOfStream)
            {
                //String outputData = new String(readBuff, 0, count);
                int index = outputData.IndexOf("<item>");
                if (index >= 0)
                    found = true;
                if (found)
                {
                    index = outputData.IndexOf("<link>");
                    if (index >= 0)
                    {
                        string href = outputData.Substring(index + 6);
                        href = href.Substring(0, href.IndexOf("</link>"));
                        result[i] = href;
                        i++;
                        if (i > no - 1) 
                            break;
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
                streamRead = new StreamReader(streamResponse, System.Text.Encoding.GetEncoding("GB2312"));
                //Char[] readBuff = new Char[256];
                //int count = streamRead.Read(readBuff, 0, 256);
                //Console.WriteLine("\nThe contents of HTML Page are :\n");
                outputData = streamRead.ReadLine();
                StringBuilder sb = new StringBuilder();
                found = false;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("class=\"title5\">") >= 0)
                    {
                        int begin = outputData.IndexOf("title5\">");
                        int end = outputData.IndexOf("</div>");
                        title[j] = outputData.Substring(begin + 8, end - begin - 8);
                        outputData = streamRead.ReadLine();
                        outputData = streamRead.ReadLine();
                        time[j] = outputData.Substring(outputData.IndexOf("日期") + 3, 10); 
                        found = true;
                    }
                    if (outputData.IndexOf("class=\"copyright\">") > 0)
                        found = false;
                    if (found)
                    {
                        outputData = outputData.Trim();
                        while (outputData.IndexOf("<") >= 0)
                        {
                            try
                            {
                                if (outputData.IndexOf(">") < 0 && !streamRead.EndOfStream)
                                    outputData += streamRead.ReadLine();
                                outputData = outputData.Remove(outputData.IndexOf("<"), outputData.IndexOf(">") - outputData.IndexOf("<") + 1);//去除标签的操作
                            }
                            catch
                            {
                                //清除设置失败
                            }
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
                outputData = outputData.Trim();
                text[j] = sb.ToString();
            }
            return true;
        }
    }
}
