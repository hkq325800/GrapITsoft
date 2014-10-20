using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;

namespace GrapITsoft
{
    class research : Inherite
    {//科技部
        private static string rootHttp = "http://research.hdu.edu.cn/kj/";

         public research(int amount) : base(amount) {
             co_id = "1025";
         }
         public override bool ReadData()
         {
             string[] result = new string[no];
             HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(website);
             myHttpWebRequest.UserAgent = ".NET Framework Test Client";
             HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
             Stream streamResponse = myHttpWebResponse.GetResponseStream();
             StreamReader streamRead = new StreamReader(streamResponse, Encoding.GetEncoding("gbk"));
             string outputData = streamRead.ReadLine();
             bool found = false;
             int i = 0;
             while (!streamRead.EndOfStream)
             {
                 int index = outputData.IndexOf(" class=\"mframe-m-mid\"");
                 int index1 = outputData.IndexOf("class=gray");
                 if (index >= 0)
                     found = true;
                 if (found && outputData.IndexOf("<td class=\'summary-title\'>") > 0)
                 {
                     index = outputData.IndexOf("href");
                     if (index >= 0)
                     {
                         outputData = outputData.Replace("&nbsp;","");
                         outputData = outputData.Replace("&mdash;", "");
                         string href = outputData.Substring(index-1);
                         href = href.Substring(0, href.IndexOf(' '));
                         result[i] = rootHttp + href;
                         if(index1>=0)
                             time[i] = outputData.Substring(outputData.IndexOf("[")+1, outputData.IndexOf("]") - outputData.IndexOf("[")-1);
                         i++;
                         if (i > no - 1) break;
                     }
                 }
                 outputData = streamRead.ReadLine();
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
                     if (outputData.IndexOf("center class=\"aTitle\"") > 0)
                     {
                         int begin = outputData.IndexOf("center class=\"aTitle\"");
                         int end = outputData.IndexOf("<br><br>");
                         title[j] = outputData.Substring(begin + 22, end - begin - 22);

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
                         outputData = outputData.Replace("&ldquo;", "");
                         outputData = outputData.Replace("&rdquo;", "");
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
