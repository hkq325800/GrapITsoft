using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using MySql.Data.MySqlClient;

namespace GrapITsoft
{
    class Auto : Inherite
    {//自动化学院
        private static string rootHttp = "http://auto.hdu.edu.cn";
        public Auto(int amount) : base(amount) {
            co_id = "1004";
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
            int i = 0, index;
            while (!streamRead.EndOfStream)
            {
                index = outputData.IndexOf("class=\'news3\'");
                if (index > 0)
                    found = true;
                while (found)
                {
                    index = outputData.IndexOf("href=\'");
                    if (index >= 0)
                    {
                        result[i] = outputData.Substring(index + 6);
                        result[i] = rootHttp + result[i].Substring(0, result[i].IndexOf("\'"));
                        
                        time[i] = outputData.Substring(outputData.IndexOf("<span>") + 6, 10);
                        i++;
                        index = outputData.IndexOf("<span>") + 6 + 10;
                        outputData = outputData.Substring(index);
                        if (i > no - 1)

                            break;
                    }
                    else
                        break;
                }
                if (i < no)
                    outputData = streamRead.ReadLine();
                else
                    break;
            }

            streamRead.Close();
            streamResponse.Close();
            myHttpWebResponse.Close();


        //if (website != "http://auto.hdu.edu.cn/Col/Col49/Index.aspx")
        //{
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
                        if (outputData.IndexOf("class=\"bor_03\"") >= 0)
                        { 
                            found = true;
                        }
                        if (outputData.IndexOf("<td height=\"48\" align=\"center\"") >= 0)
                        {
                            title[j] = outputData.Substring(outputData.IndexOf("<td height=\"48\" align=\"center\""));
                            title[j] = title[j].Substring(0, title[j].IndexOf("</td>"));
                            while (title[j].IndexOf("<") >= 0)
                            {
                                title[j] = title[j].Remove(title[j].IndexOf("<"), title[j].IndexOf(">") - title[j].IndexOf("<") + 1);
                            }
                        }
                        if (outputData.IndexOf("<br /></td>") >= 0)
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
                            outputData = outputData.Replace("\'", "\'\'");
                            sb.Append(outputData + "\n");
                        }
                        outputData = streamRead.ReadLine();
                    }
                    text[j] = sb.ToString();
                }
                return true;
            //}

            //else
            //{                
            //    for (int j = 0; j < no; j++)
            //    {
            //        myHttpWebRequest = (HttpWebRequest)WebRequest.Create(result[j]);
            //        myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            //        myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            //        streamResponse = myHttpWebResponse.GetResponseStream();
            //        streamRead = new StreamReader(streamResponse);
            //        outputData = streamRead.ReadLine();
            //        StringBuilder sb = new StringBuilder();
            //        found = false;

            //        while (!streamRead.EndOfStream)
            //        {
            //            if (outputData.IndexOf("class=\"bor_03\"") >= 0)
            //                found = true;
            //            if (outputData.IndexOf(title[j]) >= 0)
            //                found = false;
            //            if (found && outputData.IndexOf("href=\'") >= 0)
            //            {
            //                result[j] = outputData.Substring(outputData.IndexOf("href=\'") + 6);
            //                result[j] = result[j].Substring(0, result[j].IndexOf("\'"));
            //                break;
            //            }
            //            outputData = streamRead.ReadLine();
            //        }
            //    }

            //    streamRead.Close();
            //    streamResponse.Close();
            //    myHttpWebResponse.Close();

            //    for (int k = 0; k < no; k++)
            //    {
            //        myHttpWebRequest = (HttpWebRequest)WebRequest.Create(result[k]);
            //        myHttpWebRequest.UserAgent = ".NET Framework Test Client";
            //        myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
            //        streamResponse = myHttpWebResponse.GetResponseStream();
            //        streamRead = new StreamReader(streamResponse);
            //        outputData = streamRead.ReadLine();
            //        StringBuilder sb = new StringBuilder();
            //        found = false;

            //        while (!streamRead.EndOfStream)
            //        {
            //            if (outputData.IndexOf("class=\"aTitle\"") >= 0)
            //            {
            //                title[k] = outputData.Substring(outputData.IndexOf("class=\"aTitle\"" + 14), outputData.IndexOf("<br>"));
            //                found = true;
            //            }
            //            if (outputData.IndexOf("<br><br>") >= 0)
            //                found = false;
            //            if(found)
            //            {
            //                outputData = outputData.Trim();
            //                while (outputData.IndexOf("<") >= 0)
            //                {
            //                    outputData = outputData.Remove(outputData.IndexOf("<"), outputData.IndexOf(">") - outputData.IndexOf("<") + 1);
            //                }
            //                outputData = outputData.Replace("&ldquo;", "");
            //                outputData = outputData.Replace("&rdquo;", "");                       
            //                outputData = outputData.Replace("&nbsp;", "");
            //                outputData = outputData.Replace("&mdash;", "");
            //                outputData = outputData.Replace("\'", "\'\'");
            //                sb.Append(outputData + "\n");                     
            //            }
            //            outputData = streamRead.ReadLine();
            //        }
            //        text[k] = sb.ToString();
            //    }
            //    return true;
            //}
        }
    }
}
