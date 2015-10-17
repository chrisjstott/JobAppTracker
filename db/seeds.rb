# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Attribute.create([
    {
      name: "first_name",
      full_text: "First Name",
      input_type: "text",
      active: true,
      group: "Personal Information"
    },
    {
      name: "last_name",
      full_text: "Last Name",
      input_type: "text",
      active: true,
      group: "Personal Information"
    },
    {
      name: "middle_initial",
      full_text: "Middle Initial",
      input_type: "text",
      active: true,
      group: "Personal Information"
    },
    {
      name: "middle_name",
      full_text: "Middle Name",
      input_type: "text",
      active: false,
      group: "Personal Information"
    },
    {
      name: "phone_number",
      full_text: "Phone Number",
      input_type: "text",
      active: true,
      group: "Personal Information"
    },
    {
      name: "email_address",
      full_text: "Email Address",
      input_type: "text",
      active: true,
      group: "Personal Information"
    },
    {
      name: "current_address",
      full_text: "Address",
      input_type: "text",
      active: true,
      group: "Personal Information"
    },
    {
      name: "current_city",
      full_text: "City",
      input_type: "text",
      active: true,
      group: "Personal Information"
    },
    {
      name: "current_state",
      full_text: "State",
      input_type: "text",
      active: false,
      group: "Personal Information"
    },
    {
      name: "current_state_dropdown",
      full_text: "State",
      input_type: "select",
      active: true,
      options: "AK, AL, AR, AZ, CA, CO, CT, DC, DE, FL, GA, HI, IA, ID, IL, IN, KS, KY, LA, MA, MD, ME, MI, MN, MO, MS, MT, NC, ND, NE, NH, NJ, NM, NV, NY, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VA, VT, WA, WI, WV, WY",
      group: "Personal Information"
    },
    {
      name: "current_zip_code",
      full_text: "Zip Code",
      input_type: "text",
      active: true,
      group: "Personal Information"
    },
    {
      name: "current_country",
      full_text: "Country",
      input_type: "text",
      active: false,
      group: "Personal Information"
    },
    {
      name: "previous_address",
      full_text: "Previous Address",
      input_type: "text",
      active: false,
      group: "Personal Information"
    },
    {
      name: "previous_city",
      full_text: "Previous City",
      input_type: "text",
      active: false,
      group: "Personal Information"
    },
    {
      name: "previous_state",
      full_text: "Previous State",
      input_type: "text",
      active: false,
      group: "Personal Information"
    },
    {
      name: "previous_state_dropdown",
      full_text: "Previous State",
      input_type: "select",
      active: false,
      options: "AK, AL, AR, AZ, CA, CO, CT, DC, DE, FL, GA, HI, IA, ID, IL, IN, KS, KY, LA, MA, MD, ME, MI, MN, MO, MS, MT, NC, ND, NE, NH, NJ, NM, NV, NY, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VA, VT, WA, WI, WV, WY",
      group: "Personal Information"
    },
    {
      name: "previous_zip_code",
      full_text: "Previous Zip Code",
      input_type: "text",
      active: false,
      group: "Personal Information"
    },
    {
      name: "previous_country",
      full_text: "Previous Country",
      input_type: "text",
      active: false,
      group: "Personal Information"
    },
    {
      name: "eligible",
      full_text: "Are eligible to work in the United States?",
      input_type: "checkbox",
      active: false,
      group: "Personal Information"
    },
    {
      name: "over_16",
      full_text: "Are you over the age of 16?",
      input_type: "checkbox",
      active: false,
      group: "Personal Information"
    },
    {
      name: "over_18",
      full_text: "Are you over the age of 18?",
      input_type: "checkbox",
      active: false,
      group: "Personal Information"
    },
    {
      name: "over_21",
      full_text: "Are you over the age of 21?",
      input_type: "checkbox",
      active: false,
      group: "Personal Information"
    },
    {
      name: "felony",
      full_text: "Have you been convicted of a felony?",
      input_type: "checkbox",
      active: false,
      group: "Personal Information"
    },
    {
      name: "highest_education",
      full_text: "Highest education level acheived",
      input_type: "select",
      active: false,
      options: "High School, Some College, College, Technical School",
      group: "Education"
    },
    {
      name: "school1_name",
      full_text: "Name of School",
      input_type: "text",
      active: true,
      group: "Education"
    },
    {
      name: "school1_yrs",
      full_text: "Years completed",
      input_type: "text",
      active: true,
      group: "Education"
    },
    {
      name: "school1_degree",
      full_text: "Degree/Certification earned",
      input_type: "text",
      active: true,
      group: "Education"
    },
    {
      name: "school1_grad",
      full_text: "Graduation Date",
      input_type: "text",
      active: false,
      group: "Education"
    },
    {
      name: "school2_name",
      full_text: "Name of School",
      input_type: "text",
      active: false,
      group: "Education"
    },
    {
      name: "school2_yrs",
      full_text: "Years completed",
      input_type: "text",
      active: false,
      group: "Education"
    },
    {
      name: "school2_degree",
      full_text: "Degree/Certification earned",
      input_type: "text",
      active: false,
      group: "Education"
    },
    {
      name: "school2_grad",
      full_text: "Graduation Date",
      input_type: "text",
      active: false,
      group: "Education"
    },
    {
      name: "certifications",
      full_text: "Other Certifications",
      input_type: "text",
      active: false,
      group: "Education"
    },
    {
      name: "military",
      full_text: "Have you served in the military?",
      input_type: "checkbox",
      active: false,
      group: "Experience"
    },
    {
      name: "veteran",
      full_text: "Are you a veteran?",
      input_type: "checkbox",
      active: true,
      group: "Experience"
    },
    {
      name: "military_branch",
      full_text: "Military branch served",
      input_type: "select",
      active: false,
      options: "None, Army, Navy, Marine Corps, Coast Guard, Air Force",
      group: "Experience"
    },
    {
      name: "ref1_name",
      full_text: "Name of reference",
      input_type: "text",
      active: true,
      group: "References"
    },
    {
      name: "ref1_phone",
      full_text: "Phone number",
      input_type: "text",
      active: true,
      group: "References"
    },
    {
      name: "ref1_relation",
      full_text: "Relation",
      input_type: "text",
      active: true,
      group: "References"
    },
    {
      name: "ref2_name",
      full_text: "Name of reference",
      input_type: "text",
      active: true,
      group: "References"
    },
    {
      name: "ref2_phone",
      full_text: "Phone number",
      input_type: "text",
      active: true,
      group: "References"
    },
    {
      name: "ref2_relation",
      full_text: "Relation",
      input_type: "text",
      active: true,
      group: "References"
    },
    {
      name: "ref3_name",
      full_text: "Name of reference",
      input_type: "text",
      active: true,
      group: "References"
    },
    {
      name: "ref3_phone",
      full_text: "Phone number",
      input_type: "text",
      active: true,
      group: "References"
    },
    {
      name: "ref3_relation",
      full_text: "Relation",
      input_type: "text",
      active: true,
      group: "References"
    }
  ])
  
__END__
  
    {
      name: "",
      full_text: "",
      input_type: "",
      active: ,
      group: ""
    },

potential groups
  personal information
  education
  experience
  employment history
  references