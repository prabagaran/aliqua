//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    
    public partial class NearbyPlace
    {
        public string EntityId { get; set; }
        public string LocationType { get; set; }
        public string LocationName { get; set; }
        public string Distance { get; set; }
    
        public virtual LocationType LocationType1 { get; set; }
        public virtual CollegeInfo CollegeInfo { get; set; }
    }
}
