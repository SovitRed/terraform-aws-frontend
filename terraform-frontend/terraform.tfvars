#################__FOR_BUCKET_NAME__###################################

region                              = "us-east-1"

prefix                              = "home-inspection"
environment                         = "prod"



################__FOR_BUCKET_VERSIONING__###################################

versioning = false


############__FOR_BUCKET_ACCESS_CONTROL_LIST__#####################

acl = "private" 

########################## static website ########################3

index_document = "index.html"
error_document = "index.html"

######################## cloudfront ##########################333

default_root_object = "index.html"
enabled             =   true
is_ipv6_enabled     =   true
query_string        =   false
forward             =   "none"
viewer_protocol_policy = "allow-all"
min_ttl              =   0
default_ttl          = 3600
max_ttl              = 86400

 # Cache behavior with precedence 0

restriction_type     = "none"
cloudfront_default_certificate = true
s3_origin_id          = "s3origin"