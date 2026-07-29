import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  informationConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "detection-theory-information-communication-theory-canonical-lane"

def sourceDescription : String :=
  "Detection Theory Information Communication Theory"

def baselineCertificateLane : String :=
  "information_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := "classical source boundary carried by formalization"
  , informationConstrainedStatement := "information-constrained theorem certificate internalized through baseline gates"
  , certificateLane := baselineCertificateLane
  , carriedRemainder := "classical source boundary carried by theorem boundary openness constraint"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse