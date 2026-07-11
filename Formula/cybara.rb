class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1220"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1220/cybara-v1.0.1220-darwin-arm64-cli"; sha256 "1bef413d9fea3d3812006040ac7fc51e80548868fc247eaefb2c4e925f81c1c8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1220/cybara-v1.0.1220-darwin-x64-cli"; sha256 "7a001452cf220263d786145e440c2318a8a44983ff8751d78b3cea703fea125f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1220/cybara-v1.0.1220-linux-arm64-cli"; sha256 "7614f8ec2c55fc5344424557811ef16a25fa0f41b39c6256342680c039243226" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1220/cybara-v1.0.1220-linux-x64-cli"; sha256 "72b2fc1bb6d6536ea806e793ba4258b9a8b2b4cef7fb19cc62568a0547cabcfb" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
