Shader "Custom/Main Shader"
{
    Properties
    {
        _MyTexture("My texture", 2D) = "white" {}
        _MyNormalMap("My normal map", 2D) = "bump" {} // Grey
        _MyInt("My integer", Int) = 2
        _MyFloat("My float", Float) = 1.5
        _MyRange("My range", Range(0.0, 1.0)) = 0.5
        _MyColor("My colour", Color) = (1, 0, 0, 1) // (R, G, B, A)
        _MyVector("My Vector4", Vector) = (0, 0, 0, 0) // (x, y, z, w)
    }

    SubShader
        {
                    Pass {
                CGPROGRAM

                #pragma vertex vert             
                #pragma fragment frag

                struct vertInput {
                    float4 pos : POSITION;
                };

                struct vertOutput {
                    float4 pos : SV_POSITION;
                };

                vertOutput vert(vertInput input) {
                    vertOutput o;
                    o.pos = UnityObjectToClipPos(input.pos);
                    return o;
                }

                half4 frag(vertOutput output) : COLOR{
                    return half4(1.0, 0.0, 0.0, 1.0);
                }
                ENDCG
                }
        }
}