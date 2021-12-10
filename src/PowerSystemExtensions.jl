isdefined(Base, :__precompile__) && __precompile__()

"""
Module for constructing self-contained power system objects.
"""
module PowerSystemExtensions

#################################################################################
# Exports

export CleanEnergyReserve
export InertiaReserve
export ThermalCleanEnergy

#################################################################################
# Imports

import InfrastructureSystems
import InfrastructureSystems: 
    InfrastructureSystemsInternal,
    InfrastructureSystemsComponent,
    InfrastructureSystemsType

import PowerSystems
import PowerSystems:
    Device,
    Bus,
    ThermalGen,
    Min_Max,
    OperationalCost,
    ThreePartCost,
    PrimeMovers,
    ThermalFuels,
    Service,
    Reserve,
    ReserveDirection,
    DynamicInjection,
    INFINITE_TIME,
    get_value,
    set_value


const IS = InfrastructureSystems
const PSY = PowerSystems

#################################################################################
# Includes

# Include all auto-generated structs.
include("models/generated/includes.jl")

# Better printing
include("utils/print.jl")

end # module
