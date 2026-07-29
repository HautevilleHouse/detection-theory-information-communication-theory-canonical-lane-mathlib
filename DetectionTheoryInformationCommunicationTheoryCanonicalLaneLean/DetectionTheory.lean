import HautevilleHouse.DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean.SourceCoding

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

structure DetectionTheoryPackage where
  hypothesisTestDefined : Prop
  rocCurveExists : Prop
  detectionProbability : ℝ
  falseAlarmProbability : ℝ
  optimalDetectorExists : Prop
  likelihoodRatioTestOptimal : Prop

structure DetectionTheoryEvidence (D : DetectionTheoryPackage) where
  hypothesisTestDefinedClosed : D.hypothesisTestDefined
  rocCurveExistsClosed : D.rocCurveExists
  detectionProbabilityNonnegative : D.detectionProbability ≥ 0
  falseAlarmProbabilityNonnegative : D.falseAlarmProbability ≥ 0
  optimalDetectorExistsClosed : D.optimalDetectorExists
  likelihoodRatioTestOptimalClosed : D.likelihoodRatioTestOptimal

def DetectionTheoryClosed (D : DetectionTheoryPackage) : Prop :=
  D.hypothesisTestDefined ∧ D.rocCurveExists ∧ (D.detectionProbability ≥ 0) ∧ (D.falseAlarmProbability ≥ 0) ∧ D.optimalDetectorExists ∧ D.likelihoodRatioTestOptimal

theorem detection_theory_closed_from_evidence (D : DetectionTheoryPackage) (E : DetectionTheoryEvidence D) : DetectionTheoryClosed D := by
  exact And.intro E.hypothesisTestDefinedClosed (And.intro E.rocCurveExistsClosed (And.intro E.detectionProbabilityNonnegative (And.intro E.falseAlarmProbabilityNonnegative (And.intro E.optimalDetectorExistsClosed E.likelihoodRatioTestOptimalClosed))))

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse