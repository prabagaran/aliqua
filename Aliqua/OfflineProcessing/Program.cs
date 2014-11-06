using System.Collections.Generic;
using System.IO;
using System.Linq;
using WebApplication1;

namespace OfflineProcessing
{
    public class Program
    {
        public const string ConnectionString = "P3NWPLSK12SQL-v06.shr.prod.phx3.secureserver.net";
        public static void Main(string[] args)
        {
            var collegedetals = File.ReadAllLines(@"..\..\Resources\collegedetails.txt").ToList();
            collegedetals.RemoveAt(0);
            //var c = GetCollegeDetails(collegedetals);
        }

        /*
        public static IEnumerable<CollegeInfo> GetCollegeDetails(List<string> collegedetails)
        {
            var context = new CollegeDBContext();

            var ret = new List<CollegeInfo>();
            foreach (var collegedetail in collegedetails)
            {
                var splits = collegedetail.Split('\t');
                var id = splits[0];
                var name = splits[1];
                var principal = splits[2];
                var address = splits[3];
                var district = splits[4];
                var phone = splits[5];
                var email = splits[6];
                var website = splits[7];
                var bankaccount = splits[8];
                var bankname = splits[9];
                var distancefromhq = splits[10];
                var nearbyrly = splits[11];

                var collegeInfo = new CollegeInfo
                {
                    Id =  id,
                    Name = name,
                    Principal_Name = principal,
                    Address = address,
                    District = district,
                    BankAccount = bankaccount,
                    BankName = bankname,
                };
                ret.Add(collegeInfo);
                context.CollegeInfoes.Add(collegeInfo);
                context.SaveChanges();
            }
            return ret;
        }
         */
    }
}

 