//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class ContentVideoSpecialTopicMap
    {
        public System.Guid SpecialTopicID { get; set; }
        public System.Guid ContentVideoID { get; set; }
        public string Description { get; set; }
        public Nullable<int> SortNumber { get; set; }
        public string CreateUser { get; set; }
        public System.DateTime CreateDatetime { get; set; }
        public string LastUpdateUser { get; set; }
        public Nullable<System.DateTime> LastUpdateDatetime { get; set; }
    
        public virtual ContentVideo ContentVideo { get; set; }
        public virtual SpecialTopic SpecialTopic { get; set; }
    }
}
