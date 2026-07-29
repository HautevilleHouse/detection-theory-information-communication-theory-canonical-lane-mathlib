import HautevilleHouse.DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean.ShannonEntropy

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

structure ChannelCapacityPackage where
  capacity : ℝ
  capacityNonnegative : capacity ≥ 0
  capacityBound : capacity ≤ 1
  rateDistortionFunctionDefined : Prop
  sourceCodingTheorem : Prop

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  capacityNonnegativeClosed : C.capacityNonnegative
  capacityBoundClosed : C.capacityBound
  rateDistortionFunctionDefinedClosed : C.rateDistortionFunctionDefined
  sourceCodingTheoremClosed : C.sourceCodingTheorem

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.capacityNonnegative ∧ C.capacityBound ∧ C.rateDistortionFunctionDefined ∧ C.sourceCodingTheorem

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage) (E : ChannelCapacityEvidence C) : ChannelCapacityClosed C := by
  exact And.intro E.capacityNonnegativeClosed (And.intro E.capacityBoundClosed (And.intro E.rateDistortionFunctionDefinedClosed E.sourceCodingTheoremClosed))

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse