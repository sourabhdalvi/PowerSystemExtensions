#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct InertiaReserve{T <: ReserveDirection} <: Reserve{T}
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
mutable struct InertiaReserve{T <: ReserveDirection} <: Reserve{T}
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

function InertiaReserve{T}(name, available, time_frame, requirement, ext=Dict{String, Any}(), time_series_container=InfrastructureSystems.TimeSeriesContainer(), ) where T <: ReserveDirection
    InertiaReserve{T}(name, available, time_frame, requirement, ext, time_series_container, InfrastructureSystemsInternal(), )
end

function InertiaReserve{T}(; name, available, time_frame, requirement, ext=Dict{String, Any}(), time_series_container=InfrastructureSystems.TimeSeriesContainer(), internal=InfrastructureSystemsInternal(), ) where T <: ReserveDirection
    InertiaReserve{T}(name, available, time_frame, requirement, ext, time_series_container, internal, )
end

# Constructor for demo purposes; non-functional.
function InertiaReserve{T}(::Nothing) where T <: ReserveDirection
    InertiaReserve{T}(;
        name="init",
        available=false,
        time_frame=0.0,
        requirement=0.0,
        ext=Dict{String, Any}(),
        time_series_container=InfrastructureSystems.TimeSeriesContainer(),
    )
end

"""Get [`InertiaReserve`](@ref) `name`."""
PSY.get_name(value::InertiaReserve) = value.name
"""Get [`InertiaReserve`](@ref) `available`."""
PSY.get_available(value::InertiaReserve) = value.available
"""Get [`InertiaReserve`](@ref) `time_frame`."""
PSY.get_time_frame(value::InertiaReserve) = value.time_frame
"""Get [`InertiaReserve`](@ref) `requirement`."""
PSY.get_requirement(value::InertiaReserve) = value.requirement
"""Get [`InertiaReserve`](@ref) `ext`."""
PSY.get_ext(value::InertiaReserve) = value.ext
"""Get [`InertiaReserve`](@ref) `time_series_container`."""
PSY.get_time_series_container(value::InertiaReserve) = value.time_series_container
"""Get [`InertiaReserve`](@ref) `internal`."""
PSY.get_internal(value::InertiaReserve) = value.internal

"""Set [`InertiaReserve`](@ref) `name`."""
PSY.set_name!(value::InertiaReserve, val) = value.name = val
"""Set [`InertiaReserve`](@ref) `available`."""
PSY.set_available!(value::InertiaReserve, val) = value.available = val
"""Set [`InertiaReserve`](@ref) `time_frame`."""
PSY.set_time_frame!(value::InertiaReserve, val) = value.time_frame = val
"""Set [`InertiaReserve`](@ref) `requirement`."""
PSY.set_requirement!(value::InertiaReserve, val) = value.requirement = val
"""Set [`InertiaReserve`](@ref) `ext`."""
PSY.set_ext!(value::InertiaReserve, val) = value.ext = val
"""Set [`InertiaReserve`](@ref) `time_series_container`."""
PSY.set_time_series_container!(value::InertiaReserve, val) = value.time_series_container = val

