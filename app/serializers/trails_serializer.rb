class TrailsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :forecast, :trails
end
