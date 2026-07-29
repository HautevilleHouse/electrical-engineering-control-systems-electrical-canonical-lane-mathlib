import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure ControlAdmittedObject where
  system : Type u
  controlSpace : Type v
  dynamics : System → ControlSpace → System
  stabilityCondition : Prop
  conclusion : stabilityCondition

def ControlWitnessClosed (O : ControlAdmittedObject) : Prop :=
  O.conclusion

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse