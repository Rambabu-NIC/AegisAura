namespace AegisAura_PG.Models
{
    public class AG_StaffMasterDO
    {
        public int StaffId { get; set; }  // Get and Set for StaffId
        public string Name { get; set; }  // Get and Set for Name
        public string Role { get; set; }  // Get and Set for Role
        public string Phone { get; set; }  // Get and Set for Phone
        public string Address { get; set; }  // Get and Set for Address
        public string Email { get; set; }  // Get and Set for Email
        public int IsActive { get; set; }  // Get and Set for IsActive (1 for active, 0 for inactive)
        public string CreatedBy { get; set; }  // Get and Set for CreatedBy
        public DateTime CreatedDateTime { get; set; }  // Get and Set for CreatedDateTime
        public string UpdatedBy { get; set; }  // Get and Set for UpdatedBy
        public DateTime? UpdatedDateTime { get; set; }
    }
}
