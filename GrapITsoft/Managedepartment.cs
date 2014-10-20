using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;

namespace GrapITsoft
{
    class Managedepartment : Inherite
    {
        private static string rootHttp = "http://management.hdu.edu.cn"; 
        public Managedepartment(int amount) : base(amount) {
            co_id = "1011";
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
            StreamReader streamRead = new StreamReader(streamResponse);
            //Char[] readBuff = new Char[256];
            //int count = streamRead.Read(readBuff, 0, 256);
            //Console.WriteLine("\nThe contents of HTML Page are :\n");
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0;
            while (!streamRead.EndOfStream)
            {
                int index = outputData.IndexOf("当前位置");//截取的开头
                if (index >= 0)
                {
                    found = true;
                    outputData = streamRead.ReadLine();
                }
                if (found)
                {
                    while (outputData.IndexOf("var") < 0)//直至找到var为止
                    {
                        outputData += streamRead.ReadLine();
                    }
                    while (outputData.IndexOf("href=\'") >= 0)//在截取的这一段内寻找网址
                    {
                        string href = outputData.Substring(outputData.IndexOf("href=\'") + 6);
                        href = href.Substring(0, href.IndexOf("\'"));
                        outputData = outputData.Remove(outputData.IndexOf("href=\'"), 6);
                        result[i] = rootHttp + href;
                        i++;
                        if (i > no - 1)
                        {
                            found = false;
                            break;
                        }
                     }
                }
                outputData = streamRead.ReadLine();
            }
            // Release the response object resources.
            streamRead.Close();
            streamResponse.Close();
            myHttpWebResponse.Close();
            for (int j = 0; j < no; j++)//开始对每一个网址截取标题、日期、文本
            {
                myHttpWebRequest = (HttpWebRequest)WebRequest.Create(result[j]);
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
                    if (outputData.IndexOf("class=\"title\" ") > 0)           //抓取标题
                    {
                        title[j] = outputData.Substring(outputData.IndexOf("class=\"title\" "));
                        title[j] = title[j].Substring(title[j].IndexOf(">") + 1);
                        title[j] = title[j].Substring(0, title[j].IndexOf("<"));
                        found = true;
                    }
                    if (outputData.IndexOf("发布日期：") > 0)
                    {
                        outputData = streamRead.ReadLine();
                        time[j] = outputData.Trim();
                        //time[j] = outputData.Substring(0, 10);
                    }
                    if (outputData.IndexOf("返回首页") >= 0)
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
