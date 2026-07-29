import HautevilleHouse.DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean.ChannelCapacity

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

structure SourceCodingPackage where
  losslessCompressionPossible : Prop
  averageCodeLength : ℝ
  sourceEntropyBound : averageCodeLength ≥ 0
  sourceCodingTheoremSatisfied : Prop

structure SourceCodingEvidence (S : SourceCodingPackage) where
  losslessCompressionPossibleClosed : S.losslessCompressionPossible
  sourceEntropyBoundClosed : S.sourceEntropyBound
  sourceCodingTheoremSatisfiedClosed : S.sourceCodingTheoremSatisfied

def SourceCodingClosed (S : SourceCodingPackage) : Prop :=
  S.losslessCompressionPossible ∧ S.sourceEntropyBound ∧ S.sourceCodingTheoremSatisfied

theorem source_coding_closed_from_evidence (S : SourceCodingPackage) (E : SourceCodingEvidence S) : SourceCodingClosed S := by
  exact And.intro E.losslessCompressionPossibleClosed (And.intro E.sourceEntropyBoundClosed E.sourceCodingTheoremSatisfiedClosed)

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse