namespace AegisAura_PG.Models
{
    public class AG_UserMasterDO
    {
        public int UserId { get; set; }  // Get and Set for UserId
        public string UserName { get; set; }  // Get and Set for UserName
        public string Password { get; set; }  // Get and Set for Password
        public int Role { get; set; }  // Get and Set for Role
        public int? IsActive { get; set; }  // Get and Set for IsActive (nullable)
        public string CreatedBy { get; set; }  // Get and Set for CreatedBy
        public DateTime CreatedDateTime { get; set; }  // Get and Set for CreatedDateTime
        public string UpdatedBy { get; set; }  // Get and Set for UpdatedBy
        public DateTime? UpdatedDateTime { get; set; }
    }
}
