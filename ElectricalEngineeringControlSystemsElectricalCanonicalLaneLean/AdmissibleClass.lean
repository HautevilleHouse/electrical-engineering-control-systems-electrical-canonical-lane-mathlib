import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure ControlAdmittedObject where
  systemModel : Type
  controlObjective : Prop
  objectiveSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : objectiveSatisfied ∨ remainderRecorded

def admittedClosure (A : ControlAdmittedObject) : Prop :=
  A.objectiveSatisfied ∧ (A.objectiveSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse
