//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OfflineProcessing
{
    using System;
    using System.Collections.Generic;
    
    public partial class DepartmentInfo
    {
        public string Id { get; set; }
        public string BranchName { get; set; }
        public string CollegeId { get; set; }
        public string BranchCode { get; set; }
        public Nullable<int> ApprovedIntake { get; set; }
        public Nullable<int> YearofStartingCourse { get; set; }
        public Nullable<int> NBAAccredited { get; set; }
        public Nullable<System.DateTime> AccreditionValidUpto { get; set; }
    
        public virtual CollegeInfo CollegeInfo { get; set; }
        public virtual CollegeInfo CollegeInfo1 { get; set; }
    }
}