# Nesting modules Version 1
defmodule MeterToLengthConverter do
  defmodule Feet do
    def convert(length_in_meters) do
      length_in_meters * 3.28084
    end
  end

  defmodule Inch do
    def convert(length_in_meters) do
      length_in_meters * 39.3701
    end
  end
end

# Nesting modules Version 2
defmodule MeterToLengthConverter.Feet do
  def convert(length_in_meters) do
    length_in_meters * 3.28084
  end
end

defmodule MeterToLengthConverter.Inch do
  def convert(length_in_meters) do
    length_in_meters * 39.3701
  end
end

# A more idiomatic way to write the code above (instead of nesting modules)
defmodule MeterToLengthConverter do
  def convert(:feet, length_in_meters) do
    length_in_meters * 3.28084
  end

  def convert(:inch, length_in_meters) do
    length_in_meters * 39.3701
  end
end

# Method can also be defined in a single line
defmodule MeterToLengthConverter do
  def convert(:feet, length_in_meters), do: length_in_meters * 3.28084
  def convert(:inch, length_in_meters), do: length_in_meters * 39.3701
end
