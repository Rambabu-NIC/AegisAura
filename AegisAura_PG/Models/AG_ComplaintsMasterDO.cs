namespace AegisAura_PG.Models
{
    public class AG_ComplaintsMasterDO
    {
        public int ComplaintId { get; set; }  // Get and Set for ComplaintId
        public int UserId { get; set; }  // Get and Set for UserId (FK to AG_UserMaster)
        public string ComplaintDescription { get; set; }  // Get and Set for ComplaintDescription
        public string Status { get; set; }  // Get and Set for Status
        public DateTime ComplaintDate { get; set; }  // Get and Set for ComplaintDate
        public DateTime? ResolvedDate { get; set; }  // Get and Set for ResolvedDate (nullable)
        public string CreatedBy { get; set; }  // Get and Set for CreatedBy
        public DateTime CreatedDateTime { get; set; }  // Get and Set for CreatedDateTime
        public string UpdatedBy { get; set; }  // Get and Set for UpdatedBy
        public DateTime? UpdatedDateTime { get; set; }
    }
}
