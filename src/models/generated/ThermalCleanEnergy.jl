#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct ThermalCleanEnergy <: ThermalGen
        name::String
        available::Bool
        status::Bool
        bus::Bus
        active_power::Float64
        reactive_power::Float64
        rating::Float64
        active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        reactive_power_limits::Union{Nothing, Min_Max}
        ramp_limits::Union{Nothing, NamedTuple{(:up, :down), Tuple{Float64, Float64}}}
        operation_cost::OperationalCost
        base_power::Float64
        time_limits::Union{Nothing, NamedTuple{(:up, :down), Tuple{Float64, Float64}}}
        prime_mover::PrimeMovers
        fuel::ThermalFuels
        services::Vector{Service}
        time_at_status::Float64
        dynamic_injector::Union{Nothing, DynamicInjection}
        ext::Dict{String, Any}
        time_series_container::InfrastructureSystems.TimeSeriesContainer
        internal::InfrastructureSystemsInternal
    end

Data Structure for thermal generation technologies.

# Arguments
- `name::String`
- `available::Bool`
- `status::Bool`
- `bus::Bus`
- `active_power::Float64`, validation range: `active_power_limits`, action if invalid: `warn`
- `reactive_power::Float64`, validation range: `reactive_power_limits`, action if invalid: `warn`
- `rating::Float64`: Thermal limited MVA Power Output of the unit. <= Capacity, validation range: `(0, nothing)`, action if invalid: `error`
- `active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`, validation range: `(0, nothing)`, action if invalid: `warn`
- `reactive_power_limits::Union{Nothing, Min_Max}`
- `ramp_limits::Union{Nothing, NamedTuple{(:up, :down), Tuple{Float64, Float64}}}`: ramp up and ramp down limits in MW (in component base per unit) per minute, validation range: `(0, nothing)`, action if invalid: `error`
- `operation_cost::OperationalCost`
- `base_power::Float64`: Base power of the unit in MVA, validation range: `(0, nothing)`, action if invalid: `warn`
- `time_limits::Union{Nothing, NamedTuple{(:up, :down), Tuple{Float64, Float64}}}`: Minimum up and Minimum down time limits in hours, validation range: `(0, nothing)`, action if invalid: `error`
- `prime_mover::PrimeMovers`: Prime mover technology according to EIA 923
- `fuel::ThermalFuels`: Prime mover fuel according to EIA 923
- `services::Vector{Service}`: Services that this device contributes to
- `time_at_status::Float64`
- `dynamic_injector::Union{Nothing, DynamicInjection}`: corresponding dynamic injection device
- `ext::Dict{String, Any}`
- `time_series_container::InfrastructureSystems.TimeSeriesContainer`: internal time_series storage
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct ThermalCleanEnergy <: ThermalGen
    name::String
    available::Bool
    status::Bool
    bus::Bus
    active_power::Float64
    reactive_power::Float64
    "Thermal limited MVA Power Output of the unit. <= Capacity"
    rating::Float64
    active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    reactive_power_limits::Union{Nothing, Min_Max}
    "ramp up and ramp down limits in MW (in component base per unit) per minute"
    ramp_limits::Union{Nothing, NamedTuple{(:up, :down), Tuple{Float64, Float64}}}
    operation_cost::OperationalCost
    "Base power of the unit in MVA"
    base_power::Float64
    "Minimum up and Minimum down time limits in hours"
    time_limits::Union{Nothing, NamedTuple{(:up, :down), Tuple{Float64, Float64}}}
    "Prime mover technology according to EIA 923"
    prime_mover::PrimeMovers
    "Prime mover fuel according to EIA 923"
    fuel::ThermalFuels
    "Services that this device contributes to"
    services::Vector{Service}
    time_at_status::Float64
    "corresponding dynamic injection device"
    dynamic_injector::Union{Nothing, DynamicInjection}
    ext::Dict{String, Any}
    "internal time_series storage"
    time_series_container::InfrastructureSystems.TimeSeriesContainer
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function ThermalCleanEnergy(name, available, status, bus, active_power, reactive_power, rating, active_power_limits, reactive_power_limits, ramp_limits, operation_cost, base_power, time_limits=nothing, prime_mover=PrimeMovers.OT, fuel=ThermalFuels.OTHER, services=Device[], time_at_status=INFINITE_TIME, dynamic_injector=nothing, ext=Dict{String, Any}(), time_series_container=InfrastructureSystems.TimeSeriesContainer(), )
    ThermalCleanEnergy(name, available, status, bus, active_power, reactive_power, rating, active_power_limits, reactive_power_limits, ramp_limits, operation_cost, base_power, time_limits, prime_mover, fuel, services, time_at_status, dynamic_injector, ext, time_series_container, InfrastructureSystemsInternal(), )
end

function ThermalCleanEnergy(; name, available, status, bus, active_power, reactive_power, rating, active_power_limits, reactive_power_limits, ramp_limits, operation_cost, base_power, time_limits=nothing, prime_mover=PrimeMovers.OT, fuel=ThermalFuels.OTHER, services=Device[], time_at_status=INFINITE_TIME, dynamic_injector=nothing, ext=Dict{String, Any}(), time_series_container=InfrastructureSystems.TimeSeriesContainer(), internal=InfrastructureSystemsInternal(), )
    ThermalCleanEnergy(name, available, status, bus, active_power, reactive_power, rating, active_power_limits, reactive_power_limits, ramp_limits, operation_cost, base_power, time_limits, prime_mover, fuel, services, time_at_status, dynamic_injector, ext, time_series_container, internal, )
end

# Constructor for demo purposes; non-functional.
function ThermalCleanEnergy(::Nothing)
    ThermalCleanEnergy(;
        name="init",
        available=false,
        status=false,
        bus=Bus(nothing),
        active_power=0.0,
        reactive_power=0.0,
        rating=0.0,
        active_power_limits=(min=0.0, max=0.0),
        reactive_power_limits=nothing,
        ramp_limits=nothing,
        operation_cost=ThreePartCost(nothing),
        base_power=0.0,
        time_limits=nothing,
        prime_mover=PrimeMovers.OT,
        fuel=ThermalFuels.OTHER,
        services=Device[],
        time_at_status=INFINITE_TIME,
        dynamic_injector=nothing,
        ext=Dict{String, Any}(),
        time_series_container=InfrastructureSystems.TimeSeriesContainer(),
    )
end

"""Get [`ThermalCleanEnergy`](@ref) `name`."""
PSY.get_name(value::ThermalCleanEnergy) = value.name
"""Get [`ThermalCleanEnergy`](@ref) `available`."""
PSY.get_available(value::ThermalCleanEnergy) = value.available
"""Get [`ThermalCleanEnergy`](@ref) `status`."""
PSY.get_status(value::ThermalCleanEnergy) = value.status
"""Get [`ThermalCleanEnergy`](@ref) `bus`."""
PSY.get_bus(value::ThermalCleanEnergy) = value.bus
"""Get [`ThermalCleanEnergy`](@ref) `active_power`."""
PSY.get_active_power(value::ThermalCleanEnergy) = get_value(value, value.active_power)
"""Get [`ThermalCleanEnergy`](@ref) `reactive_power`."""
PSY.get_reactive_power(value::ThermalCleanEnergy) = get_value(value, value.reactive_power)
"""Get [`ThermalCleanEnergy`](@ref) `rating`."""
PSY.get_rating(value::ThermalCleanEnergy) = get_value(value, value.rating)
"""Get [`ThermalCleanEnergy`](@ref) `active_power_limits`."""
PSY.get_active_power_limits(value::ThermalCleanEnergy) = get_value(value, value.active_power_limits)
"""Get [`ThermalCleanEnergy`](@ref) `reactive_power_limits`."""
PSY.get_reactive_power_limits(value::ThermalCleanEnergy) = get_value(value, value.reactive_power_limits)
"""Get [`ThermalCleanEnergy`](@ref) `ramp_limits`."""
PSY.get_ramp_limits(value::ThermalCleanEnergy) = get_value(value, value.ramp_limits)
"""Get [`ThermalCleanEnergy`](@ref) `operation_cost`."""
PSY.get_operation_cost(value::ThermalCleanEnergy) = value.operation_cost
"""Get [`ThermalCleanEnergy`](@ref) `base_power`."""
PSY.get_base_power(value::ThermalCleanEnergy) = value.base_power
"""Get [`ThermalCleanEnergy`](@ref) `time_limits`."""
PSY.get_time_limits(value::ThermalCleanEnergy) = value.time_limits
"""Get [`ThermalCleanEnergy`](@ref) `prime_mover`."""
PSY.get_prime_mover(value::ThermalCleanEnergy) = value.prime_mover
"""Get [`ThermalCleanEnergy`](@ref) `fuel`."""
PSY.get_fuel(value::ThermalCleanEnergy) = value.fuel
"""Get [`ThermalCleanEnergy`](@ref) `services`."""
PSY.get_services(value::ThermalCleanEnergy) = value.services
"""Get [`ThermalCleanEnergy`](@ref) `time_at_status`."""
PSY.get_time_at_status(value::ThermalCleanEnergy) = value.time_at_status
"""Get [`ThermalCleanEnergy`](@ref) `dynamic_injector`."""
PSY.get_dynamic_injector(value::ThermalCleanEnergy) = value.dynamic_injector
"""Get [`ThermalCleanEnergy`](@ref) `ext`."""
PSY.get_ext(value::ThermalCleanEnergy) = value.ext
"""Get [`ThermalCleanEnergy`](@ref) `time_series_container`."""
PSY.get_time_series_container(value::ThermalCleanEnergy) = value.time_series_container
"""Get [`ThermalCleanEnergy`](@ref) `internal`."""
PSY.get_internal(value::ThermalCleanEnergy) = value.internal

"""Set [`ThermalCleanEnergy`](@ref) `name`."""
PSY.set_name!(value::ThermalCleanEnergy, val) = value.name = val
"""Set [`ThermalCleanEnergy`](@ref) `available`."""
PSY.set_available!(value::ThermalCleanEnergy, val) = value.available = val
"""Set [`ThermalCleanEnergy`](@ref) `status`."""
PSY.set_status!(value::ThermalCleanEnergy, val) = value.status = val
"""Set [`ThermalCleanEnergy`](@ref) `bus`."""
PSY.set_bus!(value::ThermalCleanEnergy, val) = value.bus = val
"""Set [`ThermalCleanEnergy`](@ref) `active_power`."""
PSY.set_active_power!(value::ThermalCleanEnergy, val) = value.active_power = set_value(value, val)
"""Set [`ThermalCleanEnergy`](@ref) `reactive_power`."""
PSY.set_reactive_power!(value::ThermalCleanEnergy, val) = value.reactive_power = set_value(value, val)
"""Set [`ThermalCleanEnergy`](@ref) `rating`."""
PSY.set_rating!(value::ThermalCleanEnergy, val) = value.rating = set_value(value, val)
"""Set [`ThermalCleanEnergy`](@ref) `active_power_limits`."""
PSY.set_active_power_limits!(value::ThermalCleanEnergy, val) = value.active_power_limits = set_value(value, val)
"""Set [`ThermalCleanEnergy`](@ref) `reactive_power_limits`."""
PSY.set_reactive_power_limits!(value::ThermalCleanEnergy, val) = value.reactive_power_limits = set_value(value, val)
"""Set [`ThermalCleanEnergy`](@ref) `ramp_limits`."""
PSY.set_ramp_limits!(value::ThermalCleanEnergy, val) = value.ramp_limits = set_value(value, val)
"""Set [`ThermalCleanEnergy`](@ref) `operation_cost`."""
PSY.set_operation_cost!(value::ThermalCleanEnergy, val) = value.operation_cost = val
"""Set [`ThermalCleanEnergy`](@ref) `base_power`."""
PSY.set_base_power!(value::ThermalCleanEnergy, val) = value.base_power = val
"""Set [`ThermalCleanEnergy`](@ref) `time_limits`."""
PSY.set_time_limits!(value::ThermalCleanEnergy, val) = value.time_limits = val
"""Set [`ThermalCleanEnergy`](@ref) `prime_mover`."""
PSY.set_prime_mover!(value::ThermalCleanEnergy, val) = value.prime_mover = val
"""Set [`ThermalCleanEnergy`](@ref) `fuel`."""
PSY.set_fuel!(value::ThermalCleanEnergy, val) = value.fuel = val
"""Set [`ThermalCleanEnergy`](@ref) `services`."""
PSY.set_services!(value::ThermalCleanEnergy, val) = value.services = val
"""Set [`ThermalCleanEnergy`](@ref) `time_at_status`."""
PSY.set_time_at_status!(value::ThermalCleanEnergy, val) = value.time_at_status = val
"""Set [`ThermalCleanEnergy`](@ref) `ext`."""
PSY.set_ext!(value::ThermalCleanEnergy, val) = value.ext = val
"""Set [`ThermalCleanEnergy`](@ref) `time_series_container`."""
PSY.set_time_series_container!(value::ThermalCleanEnergy, val) = value.time_series_container = val

