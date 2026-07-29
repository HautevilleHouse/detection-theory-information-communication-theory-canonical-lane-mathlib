import HautevilleHouse.DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

def ConstrainedDetectionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_detection_endgame (A : AdmissibleClass) : ConstrainedDetectionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse