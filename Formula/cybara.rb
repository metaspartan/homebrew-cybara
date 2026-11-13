class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2586"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2586/cybara-v1.0.2586-darwin-arm64-cli"; sha256 "178ac53c60bd1671a74a0f836fc9c6052e50767e3263f1ecc370ab4ffc79f711" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2586/cybara-v1.0.2586-darwin-x64-cli"; sha256 "93e13bb34c3073b8c8fe0ecad2b1e8e8da1b019a2d9ea85a254ca6a10ae946ed" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2586/cybara-v1.0.2586-linux-arm64-cli"; sha256 "859753d09aa0a01304c4e48b3f7edc1076f0d32e32ebb6ea9dc9940062c3e14e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2586/cybara-v1.0.2586-linux-x64-cli"; sha256 "bd511d6205031bafec38a36cc6c581498522a83f88e02cc5a86ed2849ea9897e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
