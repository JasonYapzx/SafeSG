// Hard coded scam patterns
const scamPatterns = [
    /\bfree\s*(?:trial)?\b/i,
    /\blimited\s*time\s*offer\b/i,
    /\bact\s*now\b/i,
    /\burgent\b/i,
    /\bexclusive\b/i,
    /\bguaranteed\b/i,
    /\bspecial\s*promotion\b/i,
    /\byou've\s*won\b/i,
    /\bcongratulations\b/i,
    /\bprize\b/i,
    /\bdiscount\b/i,
    /\bonly\s*today\b/i,
    /\blimited\s*stock\b/i,
    /\binstant\b/i,
    /\bclick\s*here\b/i,
    /\bcall\s*now\b/i,
    /\bmoney\s*back\s*guarantee\b/i,
    /\brisk-free\b/i,
    /\bsecret\b/i,
    /\bonce\s*in\s*a\s*lifetime\b/i,
    /\blast\s*chance\b/i,
    /\bbest\s*deal\b/i,
    /\bVIP\b/i,
    /\bextraordinary\b/i,
    /\bmassive\s*discount\b/i,
    /\bdon't\s*miss\s*out\b/i,
    /\bunbeatable\s*offer\b/i,
    /\bincredible\b/i,
    /\bone-time\s*offer\b/i,
    /\bdiscounted\s*price\b/i,
    /\bexclusive\s*offer\b/i,
    /\binstant\s*access\b/i,
    /\bcash\s*prize\b/i,
    /\bspecial\s*deal\b/i,
    /\bamazing\s*opportunity\b/i,
    /\bclaim\s*now\b/i,
    /\bbuy\s*now\b/i,
    /\blimited\s*quantity\b/i,
    /\bhidden\s*secrets\b/i,
    /\binsider\s*access\b/i,
    /\bdouble\s*your\s*money\b/i,
    /\bmillionaire\b/i,
    /\bno\s*strings\s*attached\b/i,
    /\blowest\s*price\s*ever\b/i,
    /\bnew\s*customer\s*offer\b/i,
    /\bmoney-making\b/i,
    /\bfree\s*shipping\b/i,
    /\bbig\s*savings\b/i,
    /\bclearance\s*sale\b/i,
  ];

function checkScam(text) {
  let scamPatternCount = 0;
  scamPatterns.forEach((pattern, index) => {
    console.log("Pattern", index + 1, ":", pattern);
    if (pattern.test(text)) {
      scamPatternCount++;
    }
  });

  let scamWords = [];
  scamPatterns.forEach((pattern) => {
    const matches = text.match(pattern);
    if (matches) {
      const words = matches.map((match) => match.trim());
      scamWords.push(...words);
    }
  });

  const percentage = (scamPatternCount / scamPatterns.length) * 100;
  const isScam = percentage > 50;
  const responseBody = {
    isScam,
    percentage: Math.round(percentage),
    scamPatterns: [...new Set(scamWords)],
  };

  return responseBody;
}

export { checkScam }
