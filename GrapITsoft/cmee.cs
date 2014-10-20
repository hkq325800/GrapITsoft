using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Net;

namespace GrapITsoft
{
    class cmee : Inherite
    {//材环学院
        private static string rootHttp = "http://cmee.hdu.edu.cn/";
        public cmee(int amount) : base(amount) {
            co_id = "1006";
        }

        private string ConvertWebsite(string javascript)
        {
            return "NewsContent.aspx?id=" +  javascript.Substring(javascript.IndexOf("(") + 1, 4);
        }

        public override bool ReadData()
        {
            string[] result = new string[no];
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
            myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            Stream streamResponse = myHttpWebResponse.GetResponseStream();
            StreamReader streamRead = new StreamReader(streamResponse,Encoding.GetEncoding("gbk"));
            string outputData = streamRead.ReadLine();
            bool found = false;
            int i = 0;
            while (!streamRead.EndOfStream)
            {
                int index = outputData.IndexOf("class=\"news_list\"");
                if (index >= 0)
                    found = true;
                if (found)
                {
                    index = outputData.IndexOf("href=\"");
                    if (index >= 0)
                    {
                        string href = outputData.Substring(index + 6);                       
                        href = href.Substring(0, href.IndexOf("\""));
                        href = ConvertWebsite(href);
                        result[i] = rootHttp + href;
                        i++;
                    }
                }
                outputData = streamRead.ReadLine();//继续往下面读取
                if (i > no - 1)
                    break;
            }

            streamRead.Close();
            streamResponse.Close();
            myHttpWebResponse.Close();

            for (int j = 0; j < no; j++)
            {
                myHttpWebRequest = (HttpWebRequest)WebRequest.Create(result[j]);
                myHttpWebRequest.UserAgent = ".NET Framework Test Client";
                myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
                streamResponse = myHttpWebResponse.GetResponseStream();
                streamRead = new StreamReader(streamResponse,Encoding.GetEncoding("gbk"));
                outputData = streamRead.ReadLine();
                StringBuilder sb = new StringBuilder();
                found = false;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("<!--显示新闻标题-->") >= 0)
                    {
                        title[j] = outputData.Substring(0,outputData.IndexOf("<!--显示新闻标题-->"));
                        title[j].Trim();
                        found = true;
                    }
                    if (outputData.IndexOf("返回前页") >= 0)
                        found = false;
                    if (found)
                    {
                        if (outputData.IndexOf("id=\"lblpublicTime\">") >= 0)
                        {
                            time[j] = outputData.Substring(outputData.IndexOf("id=\"lblpublicTime\">") + 19, 10);
                        }
                        outputData = outputData.Trim();
                        while (outputData.IndexOf("<") >= 0)
                        {
                            outputData = outputData.Remove(outputData.IndexOf("<"), outputData.IndexOf(">") - outputData.IndexOf("<") + 1);
                        }
                        
                        outputData = outputData.Replace("&ldquo;", "");
                        outputData = outputData.Replace("&rdquo;", "");
                        
                        outputData = outputData.Replace("&nbsp;", "");
                        outputData = outputData.Replace("&mdash;", "");
                        sb.Append(outputData + "\n");

                    }
                    outputData = streamRead.ReadLine();
                }
                text[j] = sb.ToString();

            }
            return true;
        }
    }
}
