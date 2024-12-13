namespace AegisAura_PG.Models
{
    public class AG_PaymentsMasterDO
    {
        public int PaymentId { get; set; }  // Get and Set for PaymentId
        public int UserId { get; set; }  // Get and Set for UserId (FK to AG_UserMaster)
        public decimal Amount { get; set; }  // Get and Set for Amount
        public DateTime PaymentDate { get; set; }  // Get and Set for PaymentDate
        public int PaymentStatusId { get; set; }  // Get and Set for PaymentStatusId (FK to AG_PaymentStatusMaster)
        public string InvoiceNumber { get; set; }  // Get and Set for InvoiceNumber
        public string CreatedBy { get; set; }  // Get and Set for CreatedBy
        public DateTime CreatedDateTime { get; set; }  // Get and Set for CreatedDateTime
        public string UpdatedBy { get; set; }  // Get and Set for UpdatedBy
        public DateTime? UpdatedDateTime { get; set; }
    }
}
