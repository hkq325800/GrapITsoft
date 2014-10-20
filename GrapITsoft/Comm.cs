using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;

namespace GrapITsoft
{
    class Comm : Inherite
    {//通信学院
        private static string rootHttp = "http://comm.hdu.edu.cn/";
        public Comm(int amount) : base(amount) {
            co_id = "1003";
        }
        public override bool ReadData()
        {
            string[] result = new string[no];
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
                int index = outputData.IndexOf("class=\"list_con\"");
                if (index >= 0)
                    found = true;
                if (found)
                {
                    index = outputData.IndexOf("href=\"");
                    if (index >= 0)
                    {
                        string href = outputData.Substring(index + 6);                       
                        
                        
                        href = href.Substring(0, href.IndexOf("\""));
                        result[i] = rootHttp + href;
                        time[i] = outputData.Substring(outputData.IndexOf("class=\"tiem\">[") + 14);
                        time[i] = time[i].Substring(0, time[i].IndexOf("]</span>"));
                        title[i] = outputData.Substring(outputData.IndexOf("</span>") + 7);
                        title[i] = title[i].Substring(0, title[i].IndexOf("</a>"));
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
                streamRead = new StreamReader(streamResponse);
                outputData = streamRead.ReadLine();
                StringBuilder sb = new StringBuilder();
                found = false;
                while (!streamRead.EndOfStream)
                {
                    if (outputData.IndexOf("class=\"newtitle\"") >= 0)
                        found = true;
                    if (outputData.IndexOf("class=\"bot\"") >= 0)
                        found = false;
                    if (found)
                    {
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
