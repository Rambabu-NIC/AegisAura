namespace AegisAura_PG.Models
{
    public class AG_BookingsMasterDO
    {
        public int BookingId { get; set; }  // Get and Set for BookingId
        public int UserId { get; set; }  // Get and Set for UserId (FK to AG_UserMaster)
        public int RoomId { get; set; }  // Get and Set for RoomId (FK to AG_RoomsMaster)
        public DateTime CheckInDate { get; set; }  // Get and Set for CheckInDate
        public DateTime CheckOutDate { get; set; }  // Get and Set for CheckOutDate
        public int BookingStatusId { get; set; }  // Get and Set for BookingStatusId (FK to AG_BookingStatusMaster)
        public int PaymentStatusId { get; set; }  // Get and Set for PaymentStatusId (FK to AG_PaymentStatusMaster)
        public decimal TotalAmount { get; set; }  // Get and Set for TotalAmount
        public string CreatedBy { get; set; }  // Get and Set for CreatedBy
        public DateTime CreatedDateTime { get; set; }  // Get and Set for CreatedDateTime
        public string UpdatedBy { get; set; }  // Get and Set for UpdatedBy
        public DateTime? UpdatedDateTime { get; set; }  // Get and Set for UpdatedDateTime (nullable)
        public string ContactNumber { get; set; }  // Get and Set for ContactNumber
        public string Email { get; set; }  // Get and Set for Email
        public string SpecialRequests { get; set; }
    }
}
