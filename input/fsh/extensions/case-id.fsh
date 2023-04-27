// Extension: IcpCaseIdentifierExtension
// Id: icp-case-identifier

// * ^url = $icp-case-identifier
// * ^context.type = #element
// * ^context.expression = "IcpCaseIdentifier"
// * ^status = #draft

// * identifier contains
//     claimNumber 1..1 MS and
//     patientDob 1..1 MS

// * identifier[claimNumber].value[x] only CANONICAL(icpclaimnumber)
// * identifier[patientDob].value[x] only CANONICAL(Icp_patientBirthDate)

// // Define a new StructureDefinition for the identifier extension
// StructureDefinition: MyIdentifierExtension
// Type: Extension
// Context: identifier

// // Define the URL for the extension
// * url = "http://example.com/extensions#myIdentifierExtension"

// // Define the first extension value
// * extension[0].url = "http://example.com/extensions#value1"
// * extension[0].valueString = "Some Value 1"

// // Define the second extension value
// * extension[1].url = "http://example.com/extensions#value2"
// * extension[1].valueInteger = 1234
