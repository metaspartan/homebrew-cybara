class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1621"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1621/cybara-v1.0.1621-darwin-arm64-cli"; sha256 "c8423802306ea5acb64944f2a5907112ebb608df56c7b75d1c4ffd3fbb139b55" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1621/cybara-v1.0.1621-darwin-x64-cli"; sha256 "9d14bb5c16af47045f56720e95868ef9517f07b49c8991ad5eb49213825fcc20" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1621/cybara-v1.0.1621-linux-arm64-cli"; sha256 "997a6c44ea246c8a404665edcab3ccb3c6e4e90d6f6ad0ac93dcc14692a572b7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1621/cybara-v1.0.1621-linux-x64-cli"; sha256 "1c4bbaf241eb44bd404c00d522aa2a4523671fa4b6be54a49e23d41f1532808c" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
