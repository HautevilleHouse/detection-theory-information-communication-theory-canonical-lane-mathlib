import HautevilleHouse.DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.entropyDefined ∧ A.object.channelCapacityDefined

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse