class TrailsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :forecast, :trails
end
