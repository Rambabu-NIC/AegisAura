namespace AegisAura_PG.Models
{
    public class AG_MealsMasterDO
    {
        public int MealId { get; set; }  // Get and Set for MealId
        public int UserId { get; set; }  // Get and Set for UserId (FK to AG_UserMaster)
        public int MealTypeId { get; set; }  // Get and Set for MealTypeId (FK to AG_MealTypeMaster)
        public DateTime StartDate { get; set; }  // Get and Set for StartDate
        public DateTime EndDate { get; set; }  // Get and Set for EndDate
        public string CreatedBy { get; set; }  // Get and Set for CreatedBy
        public DateTime CreatedDateTime { get; set; }  // Get and Set for CreatedDateTime
        public string UpdatedBy { get; set; }  // Get and Set for UpdatedBy
        public int MealPlanId { get; set; }  // Get and Set for MealPlanId
        public DateTime? UpdatedDateTime { get; set; }
    }
    public class AG_MealPlanMasterDO
    {
        public int MealPlanId { get; set; }  // Get and Set for MealPlanId
        public string PlanName { get; set; }  // Get and Set for PlanName
        public string Description { get; set; }  // Get and Set for Description
    }
}
