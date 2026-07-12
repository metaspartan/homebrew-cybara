class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1421"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1421/cybara-v1.0.1421-darwin-arm64-cli"; sha256 "a650606fc22b62bcfb07aeb6d5eb57b4ec2c1cefdeadf3b31e2fee6a659b9dc0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1421/cybara-v1.0.1421-darwin-x64-cli"; sha256 "f054ecb6d8160c69e7ce6e8a82834561867ac766a36df29ee2c61d67ee545dac" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1421/cybara-v1.0.1421-linux-arm64-cli"; sha256 "24170bf62cad7e29bd9f8f0bf43f48cca4e4326681fe8e0f7989d0f2a0caa3f4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1421/cybara-v1.0.1421-linux-x64-cli"; sha256 "6feea5d92e164ba10615a63f9896588efb0b494659073f91411b9da0439b98f4" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
