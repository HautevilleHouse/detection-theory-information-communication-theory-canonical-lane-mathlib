import HautevilleHouse.DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse