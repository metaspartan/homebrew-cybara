class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1713"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1713/cybara-v1.0.1713-darwin-arm64-cli"; sha256 "152434b7fddb25b33951d94bd6b482d65168aa33e374510573ac470f2a606526" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1713/cybara-v1.0.1713-darwin-x64-cli"; sha256 "23b891270c5f323d58e593a04603f0f31e41cfde44839c26c883eb8fc4370211" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1713/cybara-v1.0.1713-linux-arm64-cli"; sha256 "215c979c068edc5be2bc718612c92926f97b998c72344d04e77ac9647bf2ed8b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1713/cybara-v1.0.1713-linux-x64-cli"; sha256 "87fb923ccce618d1c32dbd659836746cd3b9c102d1d7375962bf2722e8bea4bc" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
