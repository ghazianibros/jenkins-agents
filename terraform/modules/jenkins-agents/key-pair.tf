# # Use AWS KMS to decrypt database credentials
# data "aws_kms_secrets" "jenkins_pub" {
#   secret {
#     name    = "jenkins_public_key"
#     payload = filebase64("./id_rsa.pub.encrypted")
#   }
# }

# # Use locals to grab the decrypted KMS key
# locals {
#     jenkins_pub = yamldecode(data.aws_kms_secrets.jenkins_pub.plaintext["jenkins_public_key"])
# }

# Create an EC2 key-pair
resource "aws_key_pair" "security_key" {
  key_name   = "jenkins-agents-key-pair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDrSGH+VpYqAMJzCyqCH9wYi+4M/tMUVVigMsK6hVHWS3gglh9ZQQn3To35W3vysVVXbaI5+QiGg9SI7iyhThNRb0oumLdEl9h0GbNx7NoM0Q+Eokc+Cru71ljf+pD0bFfME2qT6vvoYaC+gPwcsy+rJCfv95ZKT++FyVXqeHT2HuzP6NcI6mM32VkLdw2u8I3VhDnGVp5e/lrmfH34Cu2F0PmUhP69tL6SohSleWuqR8bfidJnhkp3OkslIx7MskKFJM0A3lX5oN1LcnT8TM9wjGDKct58Z+ls0ijaVHcvWVhzvXxO2qjmOft3m8w43MeVIrZ+oEeceTPjR+QUcccP7uiiXYei5HNObHk796CamTdhyQWqCuliMFBEIhfGHetYrXD12AhhIsts+sUvLqwgiaXccLz+zqHTmjEvitVCXPXsztKcyMjdBwk9JdoZMRx86OxklqYV/8AzGDtOpbRVLkaMOem3yUG9eCD1mV/vzYoMm02l/g8+IaU/Qzruxus= muhammadimran@MuhammaImranMBP.lan"
  #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDRpfjh4hWmN4/Q0M4R015X/VShkFxUslI84wKnU9w7+zRQX+ZjWj1s/56NzeS1WcNreOWV0u4qXlVCKIFmiBRGJvPJMYJoBOnQX7xavZDimTn9H1HbvbwgZOIo2xXIDZdfEJnagjCg2ZFwWVWTJsTV+P+l6X3VE23IrDIa8zeghrLs8qdWiK9luBpV/XO0IhaEQmtfGM8vfROi3cmkcaPef++zToA1kZzy8+JDn8DPPxPiE96JAAwJl/KjHEjgoqC8PMjyG8WZpyw2nklvU0tM4mL45Y67RfBVPv1udFEY6Sceoj+jH7koG87opBOawdNwnDPOzXlqgbj7tl7cj8GoNYmiwdNXduWaA1avOYELkHkmHXjb9AYedZlnSHB5uDUO822mHGYqcYs6fPMI8nVD2qpxmdN+yWCoorb0Y+dHUKsRip5OiEoIhEeQc4cuvePMa9282HLB6mvvEOKztwE4GSQfMzMG9MfqccLXEoZ2y3eRfeFWIs6Rm4PWEtUXzF8= kelvin-tech@ThinkPad-L14"
}