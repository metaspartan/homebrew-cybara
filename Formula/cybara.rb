class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1461"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1461/cybara-v1.0.1461-darwin-arm64-cli"; sha256 "659ff8dd6378bb2a75974fc0079e476fdbaabdbf8785e2412a74657b125f909f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1461/cybara-v1.0.1461-darwin-x64-cli"; sha256 "16da43e6b59a8e14865a14e1406536c6111667b075f874db7a0abe4cb2639eca" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1461/cybara-v1.0.1461-linux-arm64-cli"; sha256 "ed1ed43ee96d78583349783de0063e5936da420e6db9f27277ac752a8d1b6f75" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1461/cybara-v1.0.1461-linux-x64-cli"; sha256 "591fd88a71c8b6af487e92b19f90e81bceff89022e4bcf0b7fb78c7dfa45fd32" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
