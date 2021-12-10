
function Base.show(io::IO, ist::T) where T <: Union{CleanEnergyReserve, InertiaReserve, ThermalCleanEnergy}
    print(io, string(nameof(typeof(ist))), "(")
    is_first = true
    for (name, field_type) in zip(fieldnames(typeof(ist)), fieldtypes(typeof(ist)))
        getter_name = Symbol("get_$name")
        if field_type <: IS.TimeSeriesContainer ||
           field_type <: InfrastructureSystemsInternal
            continue
        elseif hasproperty(PowerSystems, getter_name)
            getter_func = getproperty(PowerSystems, getter_name)
            val = getter_func(ist)
        else
            val = getproperty(ist, name)
        end
        if is_first
            is_first = false
        else
            print(io, ", ")
        end
        print(io, val)
    end
    print(io, ")")
    return
end

function Base.show(io::IO, ::MIME"text/plain", ist::T) where T <: Union{CleanEnergyReserve, InertiaReserve, ThermalCleanEnergy}
    default_units = false
    if !PSY.has_units_setting(ist)
        print(io, "\n")
        @warn(
            "SystemUnitSetting not defined, using NATURAL_UNITS for displaying device specification."
        )
        PSY.set_units_setting!(
            ist,
            PSY.SystemUnitsSettings(100.0, PSY.UNIT_SYSTEM_MAPPING["NATURAL_UNITS"]),
        )
        default_units = true
    end
    try
        print(io, summary(ist), ":")
        for (name, field_type) in zip(fieldnames(typeof(ist)), fieldtypes(typeof(ist)))
            obj = getproperty(ist, name)
            getter_name = Symbol("get_$name")
            if (obj isa InfrastructureSystemsInternal) && !default_units
                print(io, "\n   ")
                show(io, MIME"text/plain"(), obj.units_info)
                continue
            elseif obj isa IS.TimeSeriesContainer ||
                   obj isa InfrastructureSystemsType ||
                   obj isa Vector{<:InfrastructureSystemsComponent}
                val = summary(getproperty(ist, name))
            elseif hasproperty(PowerSystems, getter_name)
                getter_func = getproperty(PowerSystems, getter_name)
                val = getter_func(ist)
            else
                val = getproperty(ist, name)
            end
            # Not allowed to print `nothing`
            if isnothing(val)
                val = "nothing"
            end
            print(io, "\n   ", name, ": ", val)
        end
    finally
        if default_units
            PSY.set_units_setting!(ist, nothing)
        end
    end
    return
end
