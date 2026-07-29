import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DetectionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DetectionAdmittedObject where
  space : DetectionSpace
  sourceAlphabet : Type
  channelOutput : Type
  entropyDefined : Prop
  channelCapacityDefined : Prop
  conclusion : entropyDefined ∧ channelCapacityDefined

structure AdmissibleClass where
  object : DetectionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.entropyDefined ∧ A.object.channelCapacityDefined) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DetectionTheoryInformationCommunicationTheoryCanonicalLaneLean
end HautevilleHouse