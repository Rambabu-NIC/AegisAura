-- 1. Users Table
drop table if exists AG_UserMaster
GO
CREATE TABLE AG_UserMaster (
    UserId INT PRIMARY KEY,              
    UserName VARCHAR(100) NOT NULL,      
    Password VARCHAR(255) NOT NULL,      
    Role INT NOT NULL,                   
    IsActive INT,                        
    CreatedBy VARCHAR(25),               
    CreatedDateTime DATETIME,            
    UpdatedBy VARCHAR(25),               
    UpdatedDateTime DATETIME             
);
-------------------------------------------
drop table if exists AG_RoleMaster
GO
CREATE TABLE AG_RoleMaster (
    RoleId INT PRIMARY KEY,             
    RoleName VARCHAR(50) NOT NULL,      
    Description VARCHAR(255)            
);
-------------------------------------------
drop table if exists AG_UserKycMaster
GO
CREATE TABLE AG_UserKycMaster (
    KycId INT PRIMARY KEY,                
    UserId INT,                           
    AadharNo VARCHAR(25),                 
    PanNo VARCHAR(25),                    
    Address VARCHAR(MAX),                 
    FullName VARCHAR(100),                
    DateOfBirth DATE,                     
    Gender VARCHAR(10),                   
    Email VARCHAR(100),                   
    PhoneNumber VARCHAR(15),              
    EmergencyContact VARCHAR(15),         
    AadharImage VARCHAR(MAX),             
    PanImage VARCHAR(MAX),                
    AddressProofType VARCHAR(50),         
    AddressProofImage VARCHAR(MAX),       
    IsActive INT,                         
    KycStatus VARCHAR(20),                
    Remarks VARCHAR(255),                 
    IsVerified INT,                       
    CreatedBy VARCHAR(25),                
    CreatedDateTime DATETIME,             
    UpdatedBy VARCHAR(25),                
    UpdatedDateTime DATETIME,             
    FOREIGN KEY (UserId) REFERENCES AG_UserMaster(UserId) 
);


-------------------------------------------
-- 2. Rooms Table
drop table if exists AG_RoomCategoryMaster
GO
CREATE TABLE AG_RoomCategoryMaster (
    RoomCategoryId INT PRIMARY KEY ,    
    CategoryName VARCHAR(50) NOT NULL,                
    Description VARCHAR(255)                          
);
drop table if exists AG_RoomTypeMaster
GO
CREATE TABLE AG_RoomTypeMaster (
    RoomTypeId INT PRIMARY KEY ,      
    TypeName VARCHAR(50) NOT NULL,                  
    Description VARCHAR(255)                        
);
drop table if exists AG_RoomStatusMaster
GO
CREATE TABLE AG_RoomStatusMaster (
    RoomStatusId INT PRIMARY KEY,     
    StatusName VARCHAR(50) NOT NULL,                 
    Description VARCHAR(255)                         
);
DROP TABLE IF EXISTS AG_RoomsMaster
GO
CREATE TABLE AG_RoomsMaster (
	UserId INT,   
    RoomId INT PRIMARY KEY ,            
    RoomCategoryId INT NOT NULL,                       
    RoomTypeId INT NOT NULL,                           
    RoomStatusId INT NOT NULL,                         
    PricePerNight DECIMAL(10, 2) NOT NULL,             
    Capacity INT NOT NULL,                             
    Features VARCHAR(255),                             
    Amenities VARCHAR(255),                            
    AssignedGuestId INT,                               
    CreatedBy VARCHAR(25),                             
    CreatedDateTime DATETIME,                          
    UpdatedBy VARCHAR(25),                             
    UpdatedDateTime DATETIME,                          
    FOREIGN KEY (RoomCategoryId) REFERENCES AG_RoomCategoryMaster(RoomCategoryId),  
    FOREIGN KEY (RoomTypeId) REFERENCES AG_RoomTypeMaster(RoomTypeId),              
    FOREIGN KEY (RoomStatusId) REFERENCES AG_RoomStatusMaster(RoomStatusId),     
    FOREIGN KEY (UserId) REFERENCES AG_UserMaster(UserId)                
);

------------------------------------------------------

-- 3. Bookings Table
CREATE TABLE AG_BookingStatusMaster (
    BookingStatusId INT PRIMARY KEY ,    -- Unique identifier for the booking status
    StatusName VARCHAR(50) NOT NULL,                    -- Name of the booking status (e.g., Booked, CheckedIn, CheckedOut, Cancelled)
    Description VARCHAR(255)                            -- Optional description of the status
);

CREATE TABLE AG_PaymentStatusMaster (
    PaymentStatusId INT PRIMARY KEY ,     -- Unique identifier for the payment status
    StatusName VARCHAR(50) NOT NULL,                     -- Name of the payment status (e.g., Pending, Completed, Failed)
    Description VARCHAR(255)                             -- Optional description of the payment status
);

CREATE TABLE AG_BookingsMaster (
    BookingId INT PRIMARY KEY ,            -- Unique identifier for the booking
    UserId INT,                                          -- Foreign key to the Users table (for guest making the booking)
    RoomId INT,                                          -- Foreign key to the Rooms table (assigned room)
    CheckInDate DATE NOT NULL,                           -- The date of check-in
    CheckOutDate DATE NOT NULL,                          -- The date of check-out
    BookingStatusId INT NOT NULL,                        -- Foreign key to the BookingStatus table
    PaymentStatusId INT NOT NULL,                        -- Foreign key to the PaymentStatus table
    TotalAmount DECIMAL(10, 2) NOT NULL,                 -- Total amount for the booking (calculated based on room rate and duration)
    CreatedBy VARCHAR(25),                               -- User who created the booking record
    CreatedDateTime DATETIME,                            -- Date and time the booking was created
    UpdatedBy VARCHAR(25),                               -- User who last updated the booking
    UpdatedDateTime DATETIME,                            -- Date and time the booking was last updated
    ContactNumber VARCHAR(15),                           -- Contact number of the guest
    Email VARCHAR(100),                                  -- Email address of the guest
    SpecialRequests VARCHAR(255),                        -- Special requests (e.g., early check-in, late check-out, etc.)
     FOREIGN KEY (UserId) REFERENCES AG_UserMaster(UserId) ,      -- Linking to Users table (guest)
    FOREIGN KEY (RoomId) REFERENCES AG_RoomsMaster(RoomId),      -- Linking to Rooms table (assigned room)
    FOREIGN KEY (BookingStatusId) REFERENCES AG_BookingStatusMaster(BookingStatusId),  -- Linking to BookingStatus table
    FOREIGN KEY (PaymentStatusId) REFERENCES AG_PaymentStatusMaster(PaymentStatusId)   -- Linking to PaymentStatus table
);


-- 4. Payments Table
CREATE TABLE AG_PaymentsMaster (
    PaymentId INT PRIMARY KEY ,          -- Unique identifier for the payment
    UserId INT,                                        -- Foreign key to the Users table (for the guest making the payment)
    Amount DECIMAL(10, 2) NOT NULL,                    -- The amount of the payment
    PaymentDate DATE NOT NULL,                         -- The date the payment was made
    PaymentStatusId INT NOT NULL,                      -- Foreign key to the PaymentStatus table (status of payment)
    InvoiceNumber VARCHAR(50) NOT NULL UNIQUE,         -- Unique invoice number for the payment
    CreatedBy VARCHAR(25),                             -- User who created the payment record
    CreatedDateTime DATETIME,                          -- Date and time the payment was created
    UpdatedBy VARCHAR(25),                             -- User who last updated the payment record
    UpdatedDateTime DATETIME,                          -- Date and time the payment was last updated
    FOREIGN KEY (UserId) REFERENCES AG_UserMaster(UserId),    -- Linking to Users table (for the guest making the payment)
    FOREIGN KEY (PaymentStatusId) REFERENCES AG_PaymentStatusMaster(PaymentStatusId)  -- Linking to PaymentStatus table
);

-- 5. Complaints Table
DROP TABLE IF EXISTS AG_ComplaintsMaster
GO
CREATE TABLE AG_ComplaintsMaster (
    ComplaintId INT PRIMARY KEY,
    UserId INT,
    ComplaintDescription VARCHAR(100),
    Status VARCHAR(25),
    ComplaintDate DATE,
    ResolvedDate DATE,
	 CreatedBy VARCHAR(25),                             
    CreatedDateTime DATETIME,                          
    UpdatedBy VARCHAR(25),                             
    UpdatedDateTime DATETIME,      
    FOREIGN KEY (UserId) REFERENCES AG_UserMaster(UserId)
);

-- 6. Meals Table
CREATE TABLE AG_MealTypeMaster (
    MealTypeId INT PRIMARY KEY,    -- Unique identifier for the meal type
    TypeName VARCHAR(50) NOT NULL,                -- Name of the meal type (e.g., Breakfast, Lunch, Dinner)
    Description VARCHAR(255)                      -- Optional description of the meal type
);

CREATE TABLE AG_MealPlanMaster (
    MealPlanId INT PRIMARY KEY,    -- Unique identifier for the meal plan
    PlanName VARCHAR(50) NOT NULL,                -- Name of the meal plan (e.g., Standard, Custom)
    Description VARCHAR(255)                      -- Optional description of the meal plan
);
CREATE TABLE AG_MealsMaster (
    MealId INT PRIMARY KEY ,          -- Unique identifier for the meal
    UserId INT,                                      -- Foreign key to the Users table (for the guest requesting the meal)
    MealTypeId INT NOT NULL,                         -- Foreign key to the MealType table (meal type like Breakfast, Lunch, Dinner)
    MealPlanId INT NOT NULL,                         -- Foreign key to the MealPlan table (meal plan like Standard, Custom)
    StartDate DATE NOT NULL,                         -- The date the meal plan starts
    EndDate DATE NOT NULL,                           -- The date the meal plan ends
    CreatedBy VARCHAR(25),                           -- User who created the meal record
    CreatedDateTime DATETIME,                        -- Date and time the meal record was created
    UpdatedBy VARCHAR(25),                           -- User who last updated the meal record
    UpdatedDateTime DATETIME,                        -- Date and time the meal record was last updated
    FOREIGN KEY (UserId) REFERENCES AG_UserMaster(UserId),  -- Linking to the Users table (guest requesting the meal)
    FOREIGN KEY (MealTypeId) REFERENCES AG_MealTypeMaster(MealTypeId),  -- Linking to the MealType table (meal type)
    FOREIGN KEY (MealPlanId) REFERENCES AG_MealPlanMaster(MealPlanId)   -- Linking to the MealPlan table (meal plan)
);


-- 7. Staff Table
CREATE TABLE AG_StaffMaster (
    StaffId INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,                      -- Name of the staff member
    Role VARCHAR(50) NOT NULL,                       -- Role/position of the staff member (e.g., Manager, Chef)
    Phone VARCHAR(15),                               -- Contact phone number of the staff member
    Address TEXT,                                    -- Address of the staff member
    Email VARCHAR(100),                              -- Email address of the staff member (optional but useful)
    IsActive INT DEFAULT 1,                          -- Status of the staff member (1 for active, 0 for inactive)
    CreatedBy VARCHAR(25),                           -- User who created the staff record
    CreatedDateTime DATETIME DEFAULT CURRENT_TIMESTAMP,  -- Date and time when the record was created
    UpdatedBy VARCHAR(25),                           -- User who last updated the staff record
    UpdatedDateTime DATETIME
);

