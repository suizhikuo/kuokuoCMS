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
    
    public partial class SpecialTopic
    {
        public SpecialTopic()
        {
            this.ContentAlbumSpecialTopicMaps = new HashSet<ContentAlbumSpecialTopicMap>();
            this.ContentArticleSpecialTopicMaps = new HashSet<ContentArticleSpecialTopicMap>();
            this.ContentMapSpecialTopicMaps = new HashSet<ContentMapSpecialTopicMap>();
            this.ContentVideoSpecialTopicMaps = new HashSet<ContentVideoSpecialTopicMap>();
            this.SpecialTopic1 = new HashSet<SpecialTopic>();
        }
    
        public System.Guid ID { get; set; }
        public Nullable<System.Guid> ParentSpecialTopicID { get; set; }
        public System.Guid SpecialTopicTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public bool IsDispaly { get; set; }
        public Nullable<int> SortNumber { get; set; }
        public string CreateUser { get; set; }
        public System.DateTime CreateDatetime { get; set; }
        public string LastUpdateUser { get; set; }
        public Nullable<System.DateTime> LastUpdateDatetime { get; set; }
    
        public virtual SpecialTopicTypDictionary SpecialTopicTypDictionary { get; set; }
        public virtual ICollection<ContentAlbumSpecialTopicMap> ContentAlbumSpecialTopicMaps { get; set; }
        public virtual ICollection<ContentArticleSpecialTopicMap> ContentArticleSpecialTopicMaps { get; set; }
        public virtual ICollection<ContentMapSpecialTopicMap> ContentMapSpecialTopicMaps { get; set; }
        public virtual ICollection<ContentVideoSpecialTopicMap> ContentVideoSpecialTopicMaps { get; set; }
        public virtual ICollection<SpecialTopic> SpecialTopic1 { get; set; }
        public virtual SpecialTopic SpecialTopic2 { get; set; }
    }
}
