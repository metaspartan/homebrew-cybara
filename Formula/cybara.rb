class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2596"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2596/cybara-v1.0.2596-darwin-arm64-cli"; sha256 "2787c30dfe55264aea59c5641f07427905be66f43d4cbde1723aff4e999e7481" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2596/cybara-v1.0.2596-darwin-x64-cli"; sha256 "8536f3744a5a1230d66de2c69c124f4ebd26c1000d1c95e5bc7d68fac09b5457" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2596/cybara-v1.0.2596-linux-arm64-cli"; sha256 "e9e97470340c6547cdfbbb79de2a3bf449ca515dd3dfa011ad004cf2d898cc9b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2596/cybara-v1.0.2596-linux-x64-cli"; sha256 "1f94ddeb8d1956c8afb77f9ceb6fbaa91b24630f6a13d456d8622e5b7f1cdda9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
