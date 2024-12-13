namespace AegisAura_PG.Models
{
    public class AG_RoomsMasterDO
    {
        public int UserId { get; set; }  // Get and Set for UserId (FK to AG_UserMaster)
        public int RoomId { get; set; }  // Get and Set for RoomId (Primary Key)
        public int RoomCategoryId { get; set; }  // Get and Set for RoomCategoryId (FK to AG_RoomCategoryMaster)
        public int RoomTypeId { get; set; }  // Get and Set for RoomTypeId (FK to AG_RoomTypeMaster)
        public int RoomStatusId { get; set; }  // Get and Set for RoomStatusId (FK to AG_RoomStatusMaster)
        public decimal PricePerNight { get; set; }  // Get and Set for PricePerNight
        public int Capacity { get; set; }  // Get and Set for Capacity (number of guests the room can accommodate)
        public string Features { get; set; }  // Get and Set for Features (e.g., WiFi, Air Conditioning)
        public string Amenities { get; set; }  // Get and Set for Amenities (e.g., TV, MiniBar)
        public int? AssignedGuestId { get; set; }  // Get and Set for AssignedGuestId (nullable as the room might not be assigned)
        public string CreatedBy { get; set; }  // Get and Set for CreatedBy
        public DateTime CreatedDateTime { get; set; }  // Get and Set for CreatedDateTime
        public string UpdatedBy { get; set; }  // Get and Set for UpdatedBy
        public DateTime? UpdatedDateTime { get; set; }  // Get and Set for UpdatedDateTime (nullable, as the room may not have been updated yet)
    }

}
