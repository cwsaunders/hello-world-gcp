import docker
import sys

def build_image(dockerfile_path=".", tag="hello-world-app"):
    try:
        client = docker.from_env()
        print("Building Docker image...")
        image, build_logs = client.images.build(path=dockerfile_path, tag=tag)
        
        for chunk in build_logs:
            if 'stream' in chunk:
                sys.stdout.write(chunk['stream'])
        print(f"\nDocker image '{tag}' built successfully.")
    except docker.errors.BuildError as build_err:
        print("Error during build:", build_err)
    except docker.errors.APIError as api_err:
        print("Docker API error:", api_err)

if __name__ == "__main__":
    build_image()
