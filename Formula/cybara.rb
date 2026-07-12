class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1390"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1390/cybara-v1.0.1390-darwin-arm64-cli"; sha256 "c27cb0461eb38a137b1c54b896de88564d210d82df060c7526694d07c23538e9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1390/cybara-v1.0.1390-darwin-x64-cli"; sha256 "2e96ec210a76a615b51d7d476e824e703900b0fbe8743aa5a4594547699c3779" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1390/cybara-v1.0.1390-linux-arm64-cli"; sha256 "e8d98a930483d6863388b7fcef12886e0d47d3269f407cdaff48cf6532becb76" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1390/cybara-v1.0.1390-linux-x64-cli"; sha256 "f4db214161b03e2fa6cb36b873914b5163dfd4b433e308c9751f0ebb06a303e9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
