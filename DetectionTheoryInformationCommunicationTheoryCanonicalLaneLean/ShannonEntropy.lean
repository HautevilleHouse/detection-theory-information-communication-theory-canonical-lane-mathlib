import HautevilleHouse.DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

structure ShannonEntropyPackage where
  entropy : ℝ
  mutualInformation : ℝ
  entropyNonnegative : entropy ≥ 0
  entropyBound : entropy ≤ 1
  mutualInformationNonnegative : mutualInformation ≥ 0
  dataProcessingInequality : Prop

structure ShannonEntropyEvidence (S : ShannonEntropyPackage) where
  entropyNonnegativeClosed : S.entropyNonnegative
  entropyBoundClosed : S.entropyBound
  mutualInformationNonnegativeClosed : S.mutualInformationNonnegative
  dataProcessingInequalityClosed : S.dataProcessingInequality

def ShannonEntropyClosed (S : ShannonEntropyPackage) : Prop :=
  S.entropyNonnegative ∧ S.entropyBound ∧ S.mutualInformationNonnegative ∧ S.dataProcessingInequality

theorem shannon_entropy_closed_from_evidence (S : ShannonEntropyPackage) (E : ShannonEntropyEvidence S) : ShannonEntropyClosed S := by
  exact And.intro E.entropyNonnegativeClosed (And.intro E.entropyBoundClosed (And.intro E.mutualInformationNonnegativeClosed E.dataProcessingInequalityClosed))

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse