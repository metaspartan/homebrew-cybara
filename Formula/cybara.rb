class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1697"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1697/cybara-v1.0.1697-darwin-arm64-cli"; sha256 "e05cae3ef129621bf0acb9b79567b0a51c5803dfd58823f96f0fa2fb3e0f4b60" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1697/cybara-v1.0.1697-darwin-x64-cli"; sha256 "c25dde6503b661364a4be187b583f4ad9c95c78d319b77a2f0112fbcca82bc13" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1697/cybara-v1.0.1697-linux-arm64-cli"; sha256 "b71158304458fc67ce56d72ec1fd712c00a9d5ca18456da6e48dab855a4ef44c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1697/cybara-v1.0.1697-linux-x64-cli"; sha256 "973ac0f69b90a017f579b1011149a78a0d6ae48d2ac3f8ea394476d012aadc08" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
