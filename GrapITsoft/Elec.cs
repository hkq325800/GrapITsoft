using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;

namespace GrapITsoft
{
    class Elec : Inherite
    {//电子信息学院
        private static string rootHttp = "http://elec.hdu.edu.cn/news";
        public Elec(int amount) : base(amount) {
            co_id = "1002";
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
                if (i > no - 1) 
                    break;
                int index = outputData.IndexOf("class=\"newsquerytitle\"");
                if (index >= 0)
                    found = true;
                if (found && outputData.IndexOf("<td class=\"newsquery\"") >= 0)
                {
                    index = outputData.IndexOf("href=\"..");
                    if (index >= 0)
                    {
                        string href = outputData.Substring(index + 8);
                        href = href.Substring(0, href.IndexOf("\""));
                        result[i] = rootHttp + href;
                        title[i] = outputData.Substring(outputData.IndexOf("<li>") + 4);
                        title[i] = title[i].Substring(0, title[i].IndexOf("</a>"));
                        i++;                       
                    }  
                } 
                outputData = streamRead.ReadLine();
                if (outputData.IndexOf("<td  class=\"newsquerytime\" align=center >") >= 0)
                    time[i - 1] = outputData.Substring(outputData.IndexOf("<td  class=\"newsquerytime\" align=center >") + 41, 10);
                
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
                    if (outputData.IndexOf("<td class=newstitle height=70>") >= 0)
                        found = true;
                    if (outputData.IndexOf("最新评论") >= 0)
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
