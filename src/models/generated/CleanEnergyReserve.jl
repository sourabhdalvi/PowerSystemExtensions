#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct CleanEnergyReserve{T <: ReserveDirection} <: Reserve{T}
        name::String
        available::Bool
        time_frame::Float64
        requirement::Float64
        ext::Dict{String, Any}
        time_series_container::InfrastructureSystems.TimeSeriesContainer
        internal::InfrastructureSystemsInternal
    end

Data Structure for the procurement products for system simulations.

# Arguments
- `name::String`
- `available::Bool`
- `time_frame::Float64`: the relative saturation time_frame, validation range: `(0, nothing)`, action if invalid: `error`
- `requirement::Float64`: the required quantity of the product should be scaled by a TimeSeriesData
- `ext::Dict{String, Any}`
- `time_series_container::InfrastructureSystems.TimeSeriesContainer`: internal time_series storage
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct CleanEnergyReserve{T <: ReserveDirection} <: Reserve{T}
    name::String
    available::Bool
    "the relative saturation time_frame"
    time_frame::Float64
    "the required quantity of the product should be scaled by a TimeSeriesData"
    requirement::Float64
    ext::Dict{String, Any}
    "internal time_series storage"
    time_series_container::InfrastructureSystems.TimeSeriesContainer
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function CleanEnergyReserve{T}(name, available, time_frame, requirement, ext=Dict{String, Any}(), time_series_container=InfrastructureSystems.TimeSeriesContainer(), ) where T <: ReserveDirection
    CleanEnergyReserve{T}(name, available, time_frame, requirement, ext, time_series_container, InfrastructureSystemsInternal(), )
end

function CleanEnergyReserve{T}(; name, available, time_frame, requirement, ext=Dict{String, Any}(), time_series_container=InfrastructureSystems.TimeSeriesContainer(), internal=InfrastructureSystemsInternal(), ) where T <: ReserveDirection
    CleanEnergyReserve{T}(name, available, time_frame, requirement, ext, time_series_container, internal, )
end

# Constructor for demo purposes; non-functional.
function CleanEnergyReserve{T}(::Nothing) where T <: ReserveDirection
    CleanEnergyReserve{T}(;
        name="init",
        available=false,
        time_frame=0.0,
        requirement=0.0,
        ext=Dict{String, Any}(),
        time_series_container=InfrastructureSystems.TimeSeriesContainer(),
    )
end

"""Get [`CleanEnergyReserve`](@ref) `name`."""
PSY.get_name(value::CleanEnergyReserve) = value.name
"""Get [`CleanEnergyReserve`](@ref) `available`."""
PSY.get_available(value::CleanEnergyReserve) = value.available
"""Get [`CleanEnergyReserve`](@ref) `time_frame`."""
PSY.get_time_frame(value::CleanEnergyReserve) = value.time_frame
"""Get [`CleanEnergyReserve`](@ref) `requirement`."""
PSY.get_requirement(value::CleanEnergyReserve) = value.requirement
"""Get [`CleanEnergyReserve`](@ref) `ext`."""
PSY.get_ext(value::CleanEnergyReserve) = value.ext
"""Get [`CleanEnergyReserve`](@ref) `time_series_container`."""
PSY.get_time_series_container(value::CleanEnergyReserve) = value.time_series_container
"""Get [`CleanEnergyReserve`](@ref) `internal`."""
PSY.get_internal(value::CleanEnergyReserve) = value.internal

"""Set [`CleanEnergyReserve`](@ref) `name`."""
PSY.set_name!(value::CleanEnergyReserve, val) = value.name = val
"""Set [`CleanEnergyReserve`](@ref) `available`."""
PSY.set_available!(value::CleanEnergyReserve, val) = value.available = val
"""Set [`CleanEnergyReserve`](@ref) `time_frame`."""
PSY.set_time_frame!(value::CleanEnergyReserve, val) = value.time_frame = val
"""Set [`CleanEnergyReserve`](@ref) `requirement`."""
PSY.set_requirement!(value::CleanEnergyReserve, val) = value.requirement = val
"""Set [`CleanEnergyReserve`](@ref) `ext`."""
PSY.set_ext!(value::CleanEnergyReserve, val) = value.ext = val
"""Set [`CleanEnergyReserve`](@ref) `time_series_container`."""
PSY.set_time_series_container!(value::CleanEnergyReserve, val) = value.time_series_container = val
