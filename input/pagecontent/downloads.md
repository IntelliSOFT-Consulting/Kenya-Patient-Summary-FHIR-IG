# Downloads

This page provides resources for downloading the Kenya Patient Summary FHIR package, validating FHIR resources against this guide, and accessing source files.

---

### FHIR NPM Package

The Kenya Patient Summary FHIR IG is published as a standard FHIR NPM package for use with validation tools, FHIR servers, and development toolchains.

| Property | Value |
|----------|-------|
| **Package ID** | `fhir.kenyaPSIG` |
| **Version** | `0.1.0` |
| **FHIR Version** | `4.0.1` (R4) |
| **Status** | Draft (CI Build) |
| **Canonical Base** | `https://fhir.dha.go.ke/ig/kenyaPS` |

**Contents of the package:**
- All KPS FHIR Profile StructureDefinitions
- Extension definitions
- ValueSets and CodeSystems
- Example resource instances
- CapabilityStatement

---

### Validation

#### Option 1: HL7 FHIR Validator (Recommended)

The [HL7 FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator) (`validator_cli.jar`) is the reference tool for validating FHIR resources against this IG.

**Basic validation command:**
```
java -jar validator_cli.jar [your-resource-file.json] \
  -version 4.0.1 \
  -ig fhir.kenyaPSIG#0.1.0
```

**Validate against a specific profile:**
```
java -jar validator_cli.jar Patient-example.json \
  -version 4.0.1 \
  -ig fhir.kenyaPSIG#0.1.0 \
  -profile https://fhir.dha.go.ke/ig/kenyaPS/StructureDefinition/ClientRegistrationModel
```

Download the latest validator: [https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar](https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar)

#### Option 2: Online FHIR Validator

Use the FHIR Foundation's hosted online validator at [https://validator.fhir.org](https://validator.fhir.org):

1. Open the validator in your browser
2. Enter `fhir.kenyaPSIG#0.1.0` in the **Implementation Guide** field
3. Paste or upload your FHIR resource JSON
4. Click **Validate**

#### Option 3: HAPI FHIR Server (Test Environment)

A test FHIR server is available for sandbox testing at:

```
https://hie-test.dha.go.ke/fhir
```

This server is pre-loaded with the KPS IG profiles and supports authenticated validation via OAuth 2.0. Contact [interoperability@dha.go.ke](mailto:interoperability@dha.go.ke) to obtain sandbox credentials.

---

### Source Files

All FSH (FHIR Shorthand) source files for this Implementation Guide are publicly available on GitHub:

**Repository:** [https://github.com/IntelliSOFT-Consulting/Kenya-Patient-Summary-FHIR-IG](https://github.com/IntelliSOFT-Consulting/Kenya-Patient-Summary-FHIR-IG)

The repository structure includes:

```
input/
  fsh/
    profiles/     — FHIR profile definitions (.fsh)
    extensions/   — Extension definitions (.fsh)
    valuesets/    — ValueSet definitions (.fsh)
    codesystems/  — CodeSystem definitions (.fsh)
    examples/     — Example resource instances (.fsh)
  pagecontent/    — Narrative documentation pages (.md)
  images/         — Diagrams and workflow images
```

---

### Implementation Resources

The following additional resources may be helpful for implementers:

| Resource | Description |
|----------|-------------|
| [FHIR R4 Specification](http://hl7.org/fhir/R4/) | Base FHIR R4 specification |
| [IPS Implementation Guide](http://hl7.org/fhir/uv/ips/) | International Patient Summary (parent IG) |
| [SMART App Launch Framework](http://hl7.org/fhir/smart-app-launch/) | Authentication and authorization for FHIR |
| [Kenya eClaims FHIR IG](http://45.79.116.94:8080/index.html) | Related Kenya IG for claims processing |
| [SUSHI Documentation](https://fshschool.org/docs/sushi/) | Tool for authoring FHIR IGs using FSH |
| [FSH School](https://fshschool.org/) | Learning resources for FHIR Shorthand |

---

### Support

For technical questions, implementation support, or to report issues with this guide:

- **Email:** [interoperability@dha.go.ke](mailto:interoperability@dha.go.ke)
- **GitHub Issues:** [Report a bug or suggest an improvement](https://github.com/IntelliSOFT-Consulting/Kenya-Patient-Summary-FHIR-IG/issues)
- **DHA Website:** [https://www.dha.go.ke](https://www.dha.go.ke)
